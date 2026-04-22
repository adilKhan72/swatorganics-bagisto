<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Meta (Facebook) Pixel
    |--------------------------------------------------------------------------
    | Set META_PIXEL_ID in your .env file. Leave empty to disable.
    */
    'meta_pixel_id' => env('META_PIXEL_ID', ''),

    /*
    |--------------------------------------------------------------------------
    | Google Analytics 4
    |--------------------------------------------------------------------------
    | Set GA4_ID in your .env file (format: G-XXXXXXXXXX). Leave empty to disable.
    */
    'ga4_id' => env('GA4_ID', ''),

    /*
    |--------------------------------------------------------------------------
    | Store Brand Name (used in Meta product feed)
    |--------------------------------------------------------------------------
    */
    'brand_name' => env('STORE_BRAND_NAME', ''),

    /*
    |--------------------------------------------------------------------------
    | Meta Feed — Shipping Country
    |--------------------------------------------------------------------------
    | ISO 3166-1 alpha-2 country code for free shipping declaration in feed.
    */
    'feed_shipping_country' => env('FEED_SHIPPING_COUNTRY', 'PK'),

    /*
    |--------------------------------------------------------------------------
    | Facebook Domain Verification
    |--------------------------------------------------------------------------
    | Set FB_DOMAIN_VERIFICATION in your .env file. Leave empty to disable.
    */
    'fb_domain_verification' => env('FB_DOMAIN_VERIFICATION', ''),

];
