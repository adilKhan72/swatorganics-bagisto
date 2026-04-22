<?php

namespace Webkul\Shop\Http\Controllers;

use Webkul\Product\Repositories\ProductRepository;

class MetaFeedController extends Controller
{
    public function __construct(protected ProductRepository $productRepository) {}

    public function index()
    {
        $channelId = (int) core()->getCurrentChannel()->id;
        $currency  = core()->getCurrentCurrencyCode();

        $allProducts = $this->productRepository->with([
            'images',
            'categories',
            'attribute_values',
            'price_indices',
            'inventory_indices',
            'variants.images',
            'variants.attribute_values.attribute',
            'variants.price_indices',
            'variants.inventory_indices',
        ])->scopeQuery(function ($query) use ($channelId) {
            return $query
                ->whereNull('products.parent_id')   // exclude variant children
                ->whereHas('channels', function ($q) use ($channelId) {
                    $q->where('channel_id', $channelId);
                });
        })->all();

        // status and visible_individually are EAV attributes — filter in PHP
        $products = $allProducts->filter(
            fn ($p) => (int) $p->status === 1 && (int) $p->visible_individually === 1
        );

        $headers = [
            'Content-Type'        => 'text/csv; charset=UTF-8',
            'Content-Disposition' => 'inline; filename="meta-feed.csv"',
            'Cache-Control'       => 'no-store, no-cache',
        ];

        $callback = function () use ($products, $currency) {
            $handle = fopen('php://output', 'w');

            // Column headers matching Meta's required template exactly
            fputcsv($handle, [
                'id',
                'title',
                'description',
                'availability',
                'condition',
                'price',
                'link',
                'image_link',
                'brand',
                'google_product_category',
                'fb_product_category',
                'quantity_to_sell_on_facebook',
                'sale_price',
                'sale_price_effective_date',
                'item_group_id',
                'gender',
                'color',
                'size',
                'age_group',
                'material',
                'pattern',
                'shipping',
                'shipping_weight',
                'offer_disclaimer',
                'offer_disclaimer_url',
                'video[0].url',
                'video[0].tag[0]',
                'gtin',
                'product_tags[0]',
                'product_tags[1]',
                'style[0]',
            ]);

            foreach ($products as $product) {
                $type = $product->type;

                if ($type === 'configurable' && $product->variants->isNotEmpty()) {
                    // One row per variant — parent image/description used as fallback
                    $parentImage = product_image()->getProductBaseImage($product);
                    $parentImageUrl  = $parentImage['medium_image_url'] ?? '';
                    $parentLink      = route('shop.product_or_category.index', $product->url_key);
                    $parentDesc      = strip_tags($product->short_description ?: $product->description ?: $product->name ?? '');
                    $parentDesc      = trim(preg_replace('/\s+/', ' ', $parentDesc));

                    foreach ($product->variants as $variant) {
                        $row = $this->buildRow(
                            product: $variant,
                            currency: $currency,
                            link: $parentLink,
                            fallbackImageUrl: $parentImageUrl,
                            fallbackDescription: $parentDesc,
                            itemGroupId: (string) $product->id,
                            sizeLabel: $this->extractSizeLabel($variant),
                        );
                        fputcsv($handle, $row);
                    }
                } else {
                    // Simple product — one row
                    $baseImage = product_image()->getProductBaseImage($product);
                    $link      = route('shop.product_or_category.index', $product->url_key);

                    $row = $this->buildRow(
                        product: $product,
                        currency: $currency,
                        link: $link,
                        fallbackImageUrl: $baseImage['medium_image_url'] ?? '',
                        fallbackDescription: '',
                        itemGroupId: '',
                        sizeLabel: '',
                    );
                    fputcsv($handle, $row);
                }
            }

            fclose($handle);
        };

        return response()->stream($callback, 200, $headers);
    }

    private function buildRow(
        $product,
        string $currency,
        string $link,
        string $fallbackImageUrl,
        string $fallbackDescription,
        string $itemGroupId,
        string $sizeLabel,
    ): array {
        // For variants, always prefer parent description (variant own desc stores option labels).
        // For standalone products, use own description; fall back to name.
        if ($fallbackDescription !== '') {
            $description = $fallbackDescription;
        } else {
            $description = strip_tags($product->short_description ?: $product->description ?: '');
            $description = trim(preg_replace('/\s+/', ' ', $description));
            if ($description === '') {
                $description = $product->name;
            }
        }
        if (\strlen($description) > 9999) {
            $description = substr($description, 0, 9996) . '...';
        }

        // Availability
        $inventoryIndex = $product->inventory_indices->first();
        $inStock        = $inventoryIndex && $inventoryIndex->is_in_stock;
        $availability   = $inStock ? 'in stock' : 'out of stock';

        // Price — Meta format: "1200.00 PKR"
        $typeInstance = $product->getTypeInstance();
        $rawPrice     = $typeInstance->getMinimalPrice();
        $price        = number_format((float) $rawPrice, 2, '.', '') . ' ' . $currency;

        // Image
        $variantImage = product_image()->getProductBaseImage($product);
        $imageUrl     = ($variantImage['medium_image_url'] ?? '') ?: $fallbackImageUrl;

        // Quantity
        $qty = $inventoryIndex ? max(0, (int) $inventoryIndex->qty) : 0;

        // Derive category tag from product categories
        $categoryNames = $product->categories->pluck('name')->toArray();
        $tag0 = $categoryNames[0] ?? '';
        $tag1 = $categoryNames[1] ?? '';

        return [
            $product->id,                                    // id
            $product->name,                                  // title
            $description,                                    // description
            $availability,                                   // availability
            'new',                                           // condition
            $price,                                          // price
            $link,                                           // link
            $imageUrl,                                       // image_link
            'Swat Organics',                                 // brand
            'Food, Beverages & Tobacco > Food Items',        // google_product_category
            'Food & Grocery',                                // fb_product_category
            $qty,                                            // quantity_to_sell_on_facebook
            '',                                              // sale_price
            '',                                              // sale_price_effective_date
            $itemGroupId,                                    // item_group_id
            'unisex',                                        // gender
            '',                                              // color
            $sizeLabel,                                      // size
            'adult',                                         // age_group
            '',                                              // material
            '',                                              // pattern
            'PK::Standard:0.00 PKR',                        // shipping (free in Pakistan)
            '',                                              // shipping_weight
            '',                                              // offer_disclaimer
            '',                                              // offer_disclaimer_url
            '',                                              // video[0].url
            '',                                              // video[0].tag[0]
            '',                                              // gtin
            $tag0,                                           // product_tags[0]
            $tag1,                                           // product_tags[1]
            '',                                              // style[0]
        ];
    }

    private function extractSizeLabel($variant): string
    {
        // Variant names always end with the readable size: "Almonds 250 G", "Olive Oil 1 L"
        // net_weight stores option IDs (not labels), so parse from name instead.
        if (preg_match('/(\d+(?:\.\d+)?\s*(?:G|KG|gm|kg|ml|mL|L))\s*$/i', $variant->name ?? '', $m)) {
            return strtoupper(trim($m[1]));
        }

        return '';
    }
}
