<?php

namespace Webkul\Shipping\Carriers;

use Webkul\Checkout\Facades\Cart;
use Webkul\Checkout\Models\CartShippingRate;
use Webkul\Shipping\Carriers\Free;

class FlatRate extends AbstractShipping
{
    /**
     * Shipping method carrier code.
     *
     * @var string
     */
    protected $code = 'flatrate';

    /**
     * Shipping method code.
     *
     * @var string
     */
    protected $method = 'flatrate_flatrate';


    // Adil Edited Here Commented default Calculate method and Added new Method to only show free flat rate shipping method if order is below (Minimum Order Amount - minimum_order_amount) threshold.
    // /**
    //  * Calculate rate for flatrate.
    //  *
    //  * @return \Webkul\Checkout\Models\CartShippingRate|false
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

        $cart = Cart::getCart();

        if (! $cart) {
            return false;
        }

        // Instantiate the Free Shipping carrier directly (Bagisto 2.3.x)
        $freeShippingCarrier = new Free();

        // Check if Free Shipping is available for this cart
        if ($freeShippingCarrier->isAvailable()) {

            $min = floatval(core()->getConfigData('sales.carriers.free.minimum_order_amount'));

            // Hide flat rate if free shipping is allowed
            if ($min > 0 && floatval($cart->sub_total) >= $min) {
                return false;
            }
        }

        return $this->getRate();
    }

    /**
     * Get rate.
     */
    public function getRate(): CartShippingRate
    {
        $cart = Cart::getCart();

        $cartShippingRate = new CartShippingRate;

        $cartShippingRate->carrier = $this->getCode();
        $cartShippingRate->carrier_title = $this->getConfigData('title');
        $cartShippingRate->method = $this->getMethod();
        $cartShippingRate->method_title = $this->getConfigData('title');
        $cartShippingRate->method_description = $this->getConfigData('description');
        $cartShippingRate->price = 0;
        $cartShippingRate->base_price = 0;

        if ($this->getConfigData('type') == 'per_unit') {
            foreach ($cart->items as $item) {
                if ($item->getTypeInstance()->isStockable()) {
                    $cartShippingRate->price += core()->convertPrice($this->getConfigData('default_rate')) * $item->quantity;
                    $cartShippingRate->base_price += $this->getConfigData('default_rate') * $item->quantity;
                }
            }
        } else {
            $cartShippingRate->price = core()->convertPrice($this->getConfigData('default_rate'));
            $cartShippingRate->base_price = $this->getConfigData('default_rate');
        }

        return $cartShippingRate;
    }
}
