<?php

namespace Webkul\Product\Helpers;

use Illuminate\Support\Facades\Storage;

class SEO
{
    /**
     * Returns product json ld data for product
     *
     * @param  \Webkul\Product\Contracts\Product  $product
     * @return string
     */
    public function getProductJsonLd($product)
    {
        $data = [
            '@context'    => 'https://schema.org/',
            '@type'       => 'Product',
            'name'        => $product->name,
            'description' => $product->description,
            'url'         => route('shop.product_or_category.index', $product->url_key),
        ];

        if (core()->getConfigData('catalog.rich_snippets.products.show_sku')) {
            $data['sku'] = $product->sku;
        }

        if (core()->getConfigData('catalog.rich_snippets.products.show_weight')) {
            $data['weight'] = $product->weight;
        }

        if (core()->getConfigData('catalog.rich_snippets.products.show_categories')) {
            $data['categories'] = $this->getProductCategories($product);
        }

        if (core()->getConfigData('catalog.rich_snippets.products.show_images')) {
            $data['image'] = $this->getProductImages($product);
        }

        if (core()->getConfigData('catalog.rich_snippets.products.show_reviews')) {
            $reviews = $this->getProductReviews($product);
            if (! empty($reviews)) {
                $data['review'] = $reviews;
            }
        }

        if (core()->getConfigData('catalog.rich_snippets.products.show_ratings')) {
            $aggregateRating = $this->getProductAggregateRating($product);
            if ($aggregateRating !== null) {
                $data['aggregateRating'] = $aggregateRating;
            }
        }

        $data['brand'] = [
            '@type' => 'Brand',
            'name'  => 'Swat Organics',
        ];

        if (core()->getConfigData('catalog.rich_snippets.products.show_offers')) {
            $data['offers'] = $this->getProductOffers($product);
        }

        return json_encode($data);
    }

    /**
     * Returns product categories
     *
     * @param  \Webkul\Product\Contracts\Product  $product
     * @return string
     */
    public function getProductCategories($product)
    {
        $categories = $product->categories;

        $names = [];

        foreach ($categories as $key => $category) {
            $names[] = $category->name;
        }

        return implode(', ', $names);
    }

    /**
     * Returns product images
     *
     * @param  \Webkul\Product\Contracts\Product  $product
     * @return array
     */
    public function getProductImages($product)
    {
        $images = [];

        foreach ($product->images as $image) {
            if (! Storage::has($image->path)) {
                continue;
            }

            $images[] = $image->url;
        }

        return $images;
    }

    /**
     * Returns product reviews
     *
     * @param  \Webkul\Product\Contracts\Product  $product
     * @return array
     */
    public function getProductReviews($product)
    {
        $reviews = [];

        foreach ($product->reviews()->where('status', 'approved')->get() as $review) {
            $reviews[] = [
                '@type'        => 'Review',
                'reviewRating' => [
                    '@type'       => 'Rating',
                    'ratingValue' => $review->rating,
                    'bestRating'  => '5',
                ],
                'author'       => [
                    '@type' => 'Person',
                    'name'  => $review->name,
                ],
            ];
        }

        return $reviews;
    }

    /**
     * Returns product average ratings
     *
     * @param  \Webkul\Product\Contracts\Product  $product
     * @return array
     */
    public function getProductAggregateRating($product)
    {
        $reviewHelper = app('Webkul\Product\Helpers\Review');

        $reviewCount = (int) $reviewHelper->getTotalReviews($product);
        $ratingValue = (float) $reviewHelper->getAverageRating($product);

        if ($reviewCount < 1 || $ratingValue < 1) {
            return null;
        }

        return [
            '@type'       => 'AggregateRating',
            'ratingValue' => round($ratingValue, 1),
            'reviewCount' => $reviewCount,
            'bestRating'  => '5',
            'worstRating' => '1',
        ];
    }

    /**
     * Returns product average ratings
     *
     * @param  \Webkul\Product\Contracts\Product  $product
     * @return array
     */
    public function getProductOffers($product)
    {
        return [
            '@type'         => 'Offer',
            'priceCurrency' => core()->getCurrentCurrencyCode(),
            'price'         => $product->getTypeInstance()->getMinimalPrice(),
            'availability'  => 'https://schema.org/InStock',
            'url'           => route('shop.product_or_category.index', $product->url_key),
            'hasMerchantReturnPolicy' => [
                '@type'                    => 'MerchantReturnPolicy',
                'applicableCountry'        => 'PK',
                'returnPolicyCategory'     => 'https://schema.org/MerchantReturnFiniteReturnWindow',
                'merchantReturnDays'       => 7,
                'returnMethod'             => 'https://schema.org/ReturnByMail',
                'returnFees'               => 'https://schema.org/FreeReturn',
            ],
            'shippingDetails' => [
                '@type'               => 'OfferShippingDetails',
                'shippingRate'        => [
                    '@type'    => 'MonetaryAmount',
                    'value'    => '0',
                    'currency' => 'PKR',
                ],
                'shippingDestination' => [
                    '@type'           => 'DefinedRegion',
                    'addressCountry'  => 'PK',
                ],
                'deliveryTime' => [
                    '@type'         => 'ShippingDeliveryTime',
                    'handlingTime'  => [
                        '@type'   => 'QuantitativeValue',
                        'minValue'=> 0,
                        'maxValue'=> 1,
                        'unitCode'=> 'DAY',
                    ],
                    'transitTime'   => [
                        '@type'   => 'QuantitativeValue',
                        'minValue'=> 2,
                        'maxValue'=> 5,
                        'unitCode'=> 'DAY',
                    ],
                ],
            ],
        ];
    }

    /**
     * Returns product json ld data for category
     *
     * @param  \Webkul\Category\Contracts\Category  $category
     * @return array
     */
    public function getCategoryJsonLd($category)
    {
        $data = [
            '@type'    => 'WebSite',
            '@context' => 'http://schema.org',
            'url'      => config('app.url'),
        ];

        if (core()->getConfigData('catalog.rich_snippets.categories.show_search_input_field')) {
            $data['potentialAction'] = [
                '@type'       => 'SearchAction',
                'target'      => config('app.url').'/search/?term={search_term_string}',
                'query-input' => 'required name=search_term_string',
            ];
        }

        return json_encode($data);
    }
}
