<?php
Route::get('/debug-shipping', function () {
    return [
        'channel' => core()->getCurrentChannel()->code,
        'flat'    => core()->getConfigData('sales.carriers.flatrate'),
        'free'    => core()->getConfigData('sales.carriers.free'),
    ];
});

Route::get('/debug-cart', function () {
    $cart = cart()->getCart();

    return $cart ? $cart->toArray() : 'No cart found';
});