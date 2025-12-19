<?php

namespace Webkul\Shop\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Webkul\Core\Rules\PhoneNumber;
use Webkul\Core\Rules\PostCode;
use Webkul\Customer\Rules\VatIdRule;

class CartAddressRequest extends FormRequest
{
    /**
     * Rules.
     *
     * @var array
     */
    protected $rules = [];

    /**
     * Determine if the product is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     */
    public function rules(): array
    {
        if ($this->has('billing')) {
            $this->mergeAddressRules('billing');
        }

        if (! $this->input('billing.use_for_shipping')) {
            $this->mergeAddressRules('shipping');
        }

        return $this->rules;
    }

    /**
     * Merge new address rules.
     */
    private function mergeAddressRules(string $addressType): void
    {
        $rules = [];

        $fields = [
            'company_name',
            'first_name',
            'last_name',
            'email',
            'address',
            'city',
            'country',
            'state',
            'postcode',
            'phone',
        ];

        foreach ($fields as $field) {

            // 1️⃣ If field is hidden → skip completely
            if (! core()->isCheckoutFieldVisible($field)) {
                continue;
            }

            $isRequired = core()->isCheckoutFieldRequired($field);

            switch ($field) {
                case 'email':
                    $rules["{$addressType}.email"] = $isRequired
                        ? ['required', 'email']
                        : ['nullable', 'email'];
                    break;

                case 'address':
                    $rules["{$addressType}.address"] = $isRequired
                        ? ['required', 'array', 'min:1']
                        : ['nullable', 'array'];
                    break;

                case 'postcode':
                    $rules["{$addressType}.postcode"] = $isRequired
                        ? ['required', new PostCode]
                        : [new PostCode];
                    break;

                case 'phone':
                    $rules["{$addressType}.phone"] = $isRequired
                        ? ['required', new PhoneNumber]
                        : [new PhoneNumber];
                    break;

                case 'country':
                    $rules["{$addressType}.country"] = $isRequired
                        ? ['required']
                        : ['nullable'];
                    break;

                case 'state':
                    $rules["{$addressType}.state"] = $isRequired
                        ? ['required']
                        : ['nullable'];
                    break;

                default:
                    $rules["{$addressType}.{$field}"] = $isRequired
                        ? ['required']
                        : ['nullable'];
            }
        }

        // VAT only applies to billing
        if ($addressType === 'billing' && core()->isCheckoutFieldVisible('vat_id')) {
            $rules["billing.vat_id"] = core()->isCheckoutFieldRequired('vat_id')
                ? ['required', (new VatIdRule)->setCountry($this->input('billing.country'))]
                : [(new VatIdRule)->setCountry($this->input('billing.country'))];
        }

        $this->mergeWithRules($rules);
    }


    /**
     * Merge additional rules.
     */
    private function mergeWithRules($rules): void
    {
        $this->rules = array_merge($this->rules, $rules);
    }
}
