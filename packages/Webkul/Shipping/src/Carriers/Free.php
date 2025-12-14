<?php

namespace Webkul\Shipping\Carriers;

use Webkul\Checkout\Models\CartShippingRate;
use Webkul\Checkout\Facades\Cart;

class Free extends AbstractShipping
{
    /**
     * Shipping method carrier code.
     *
     * @var string
     */
    protected $code = 'free';

    /**
     * Shipping method code.
     *
     * @var string
     */
    protected $method = 'free_free';

    // Adil Edited Here Commented default Calculate method and Added new Method to only show free shipping if order is above (Minimum Order Amount - minimum_order_amount) threshold.
    // /**
    //  * Calculate rate for free shipping.
    //  *
    //  * @return CartShippingRate|false
    //  */
    // public function calculate()
    // {
    //     if (! $this->isAvailable()) {
    //         return false;
    //     }

    //     return $this->getRate();
    // }

    public function calculate()
    {
        if (! $this->isAvailable()) {
            return false;
        }

        // Get the active cart (correct in Bagisto 2.3.x)
        $cart = Cart::getCart();

        if (! $cart) {
            return false;
        }

        // Correct subtotal property in Bagisto 2.3.x
        $orderTotal = floatval($cart->sub_total);

        // Configured minimum order for free shipping
        $min = floatval($this->getConfigData('minimum_order_amount'));

        // Enforce rule: free shipping applies only when subtotal >= minimum
        if ($min > 0 && $orderTotal < $min) {
            return false;
        }

        // Return the free shipping rate
        return $this->getRate();
    }


    /**
     * Get rate.
     */
    public function getRate(): CartShippingRate
    {
        $cartShippingRate = new CartShippingRate;

        $cartShippingRate->carrier = $this->getCode();
        $cartShippingRate->carrier_title = $this->getConfigData('title');
        $cartShippingRate->method = $this->getMethod();
        $cartShippingRate->method_title = $this->getConfigData('title');
        $cartShippingRate->method_description = $this->getConfigData('description');
        $cartShippingRate->price = 0;
        $cartShippingRate->base_price = 0;

        return $cartShippingRate;
    }
}
