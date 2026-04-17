<?php

namespace Webkul\Product\Observers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class ProductObserver
{
    /**
     * Handle the Product "deleted" event.
     *
     * @param  \Webkul\Product\Contracts\Product  $product
     * @return void
     */
    public function deleted($product)
    {
        Storage::deleteDirectory('product/'.$product->id);

        /*
         * MyISAM does not support foreign key cascades, so we must manually
         * remove all rows that reference this product across related tables.
         */

        // If this is a configurable/bundle parent, delete all variant children first
        // (direct DB delete to avoid recursion — children have no children themselves)
        $childIds = DB::table('products')->where('parent_id', $product->id)->pluck('id')->toArray();

        if (! empty($childIds)) {
            DB::table('product_flat')->whereIn('product_id', $childIds)->delete();
            DB::table('product_attribute_values')->whereIn('product_id', $childIds)->delete();
            DB::table('product_inventories')->whereIn('product_id', $childIds)->delete();
            DB::table('product_images')->whereIn('product_id', $childIds)->delete();
            DB::table('products')->whereIn('id', $childIds)->delete();
        }

        // Clean up the parent/simple product rows
        DB::table('product_flat')->where('product_id', $product->id)->delete();
        DB::table('product_attribute_values')->where('product_id', $product->id)->delete();
        DB::table('product_inventories')->where('product_id', $product->id)->delete();
        DB::table('product_categories')->where('product_id', $product->id)->delete();
        DB::table('product_images')->where('product_id', $product->id)->delete();
        DB::table('product_super_attributes')->where('product_id', $product->id)->delete();
    }
}
