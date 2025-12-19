@pushOnce('scripts')
    <script
        type="text/x-template"
        id="v-checkout-address-form-template"
    >
        <div class="mt-2 max-md:mt-3">
            <x-shop::form.control-group class="hidden">
                <x-shop::form.control-group.control
                    type="text"
                    ::name="controlName + '.id'"
                    ::value="address.id"
                />
            </x-shop::form.control-group>

            <!-- Company Name -->
            <x-shop::form.control-group
                v-if="isVisible('company_name')"
            >
                <x-shop::form.control-group.label
                    class="{{ core()->isCheckoutFieldRequired('company_name') ? 'required !mt-0' : '' }}"
                >
                    @lang('shop::app.checkout.onepage.address.company-name')
                </x-shop::form.control-group.label>

                <x-shop::form.control-group.control
                    type="text"
                    ::name="controlName + '.company_name'"
                    ::value="address.company_name"
                    rules="{{ core()->isCheckoutFieldRequired('company_name') ? 'required' : '' }}"
                    :placeholder="trans('shop::app.checkout.onepage.address.company-name')"
                />
            </x-shop::form.control-group>

            {!! view_render_event('bagisto.shop.checkout.onepage.address.form.company_name.after') !!}

            <!-- First Name -->
            <div class="grid grid-cols-2 gap-x-5 max-md:grid-cols-1">
                <x-shop::form.control-group
                    v-if="isVisible('first_name')"
                >
                    <x-shop::form.control-group.label
                        class="{{ core()->isCheckoutFieldRequired('first_name') ? 'required !mt-0' : '' }}"
                    >
                        @lang('shop::app.checkout.onepage.address.first-name')
                    </x-shop::form.control-group.label>

                    <x-shop::form.control-group.control
                        type="text"
                        ::name="controlName + '.first_name'"
                        ::value="address.first_name"
                        rules="{{ core()->isCheckoutFieldRequired('first_name') ? 'required' : '' }}"
                        :label="trans('shop::app.checkout.onepage.address.first-name')"
                        :placeholder="trans('shop::app.checkout.onepage.address.first-name')"
                    />

                    <x-shop::form.control-group.error ::name="controlName + '.first_name'" />
                </x-shop::form.control-group>

                {!! view_render_event('bagisto.shop.checkout.onepage.address.form.first_name.after') !!}

                <!-- Last Name -->
                <x-shop::form.control-group
                    v-if="isVisible('last_name')"
                >
                    <x-shop::form.control-group.label
                        class="{{ core()->isCheckoutFieldRequired('last_name') ? 'required !mt-0' : '' }}"
                    >
                        @lang('shop::app.checkout.onepage.address.last-name')
                    </x-shop::form.control-group.label>

                    <x-shop::form.control-group.control
                        type="text"
                        ::name="controlName + '.last_name'"
                        ::value="address.last_name"
                        rules="{{ core()->isCheckoutFieldRequired('last_name') ? 'required' : '' }}"
                        :label="trans('shop::app.checkout.onepage.address.last-name')"
                        :placeholder="trans('shop::app.checkout.onepage.address.last-name')"
                    />

                    <x-shop::form.control-group.error ::name="controlName + '.last_name'" />
                </x-shop::form.control-group>

                {!! view_render_event('bagisto.shop.checkout.onepage.address.form.last_name.after') !!}
            </div>

            <!-- Email -->
            <x-shop::form.control-group
                v-if="isVisible('email')"
            >
                <x-shop::form.control-group.label
                    class="{{ core()->isCheckoutFieldRequired('email') ? 'required !mt-0' : '' }}"
                >
                    @lang('shop::app.checkout.onepage.address.email')
                </x-shop::form.control-group.label>

                <x-shop::form.control-group.control
                    type="email"
                    ::name="controlName + '.email'"
                    ::value="address.email"
                    rules="{{ core()->isCheckoutFieldRequired('email') ? 'required' : '' }}|email"
                    :label="trans('shop::app.checkout.onepage.address.email')"
                    placeholder="email@example.com"
                />

                <x-shop::form.control-group.error ::name="controlName + '.email'" />
            </x-shop::form.control-group>

            {!! view_render_event('bagisto.shop.checkout.onepage.address.form.email.after') !!}

            <!-- Vat ID -->
            <template v-if="controlName=='billing'">
                <x-shop::form.control-group
                    v-if="isVisible('vat_id')"
                >
                    <x-shop::form.control-group.label
                        class="{{ core()->isCheckoutFieldRequired('vat_id') ? 'required !mt-0' : '' }}"
                    >
                        @lang('shop::app.checkout.onepage.address.vat-id')
                    </x-shop::form.control-group.label>

                    <x-shop::form.control-group.control
                        type="text"
                        ::name="controlName + '.vat_id'"
                        ::value="address.vat_id"
                        rules="{{ core()->isCheckoutFieldRequired('vat_id') ? 'required' : '' }}"
                        :label="trans('shop::app.checkout.onepage.address.vat-id')"
                        :placeholder="trans('shop::app.checkout.onepage.address.vat-id')"
                    />

                    <x-shop::form.control-group.error ::name="controlName + '.vat_id'" />
                </x-shop::form.control-group>

                {!! view_render_event('bagisto.shop.checkout.onepage.address.form.vat_id.after') !!}
            </template>

            <!-- Street Address -->
            <x-shop::form.control-group
                v-if="isVisible('address')"
            >
                <x-shop::form.control-group.label
                    class="{{ core()->isCheckoutFieldRequired('address') ? 'required !mt-0' : '' }}"
                >
                    @lang('shop::app.checkout.onepage.address.street-address')
                </x-shop::form.control-group.label>

                <x-shop::form.control-group.control
                    type="text"
                    ::name="controlName + '.address.[0]'"
                    ::value="address.address[0]"
                    rules="{{ core()->isCheckoutFieldRequired('address') ? 'required' : '' }}|address"
                    :label="trans('shop::app.checkout.onepage.address.street-address')"
                    :placeholder="trans('shop::app.checkout.onepage.address.street-address')"
                />

                <x-shop::form.control-group.error
                    class="mb-2"
                    ::name="controlName + '.address.[0]'"
                />

                @if (core()->getConfigData('customer.address.information.street_lines') > 1)
                    @for ($i = 1; $i < core()->getConfigData('customer.address.information.street_lines'); $i++)
                        <x-shop::form.control-group.control
                            type="text"
                            ::name="controlName + '.address.[{{ $i }}]'"
                            rules="{{ core()->isCheckoutFieldRequired('address') ? 'required' : '' }}"
                            :label="trans('shop::app.checkout.onepage.address.street-address')"
                            :placeholder="trans('shop::app.checkout.onepage.address.street-address')"
                        />

                        <x-shop::form.control-group.error
                            class="mb-2"
                            ::name="controlName + '.address.[{{ $i }}]'"
                        />
                    @endfor
                @endif
            </x-shop::form.control-group>

            {!! view_render_event('bagisto.shop.checkout.onepage.address.form.address.after') !!}

            <div class="grid grid-cols-2 gap-x-5 max-md:grid-cols-1">
                <!-- Country -->
                <x-shop::form.control-group class="!mb-4"
                    v-if="isVisible('country')"
                >
                    <x-shop::form.control-group.label
                        class="{{ core()->isCheckoutFieldRequired('country') ? 'required !mt-0' : '' }}"
                    >
                        @lang('shop::app.checkout.onepage.address.country')
                    </x-shop::form.control-group.label>

                    <x-shop::form.control-group.control
                        type="select"
                        ::name="controlName + '.country'"
                        ::value="address.country"
                        v-model="selectedCountry"
                        rules="{{ core()->isCheckoutFieldRequired('country') ? 'required' : '' }}"
                        :label="trans('shop::app.checkout.onepage.address.country')"
                        :placeholder="trans('shop::app.checkout.onepage.address.country')"
                    >
                        <option value="">
                            @lang('shop::app.checkout.onepage.address.select-country')
                        </option>

                        <option
                            v-for="country in countries"
                            :value="country.code"
                        >
                            @{{ country.name }}
                        </option>
                    </x-shop::form.control-group.control>

                    <x-shop::form.control-group.error ::name="controlName + '.country'" />
                </x-shop::form.control-group>

                {!! view_render_event('bagisto.shop.checkout.onepage.address.form.country.after') !!}

                <!-- State -->
                <x-shop::form.control-group
                    v-if="isVisible('state')"
                >
                    <x-shop::form.control-group.label
                        class="{{ core()->isCheckoutFieldRequired('state') ? 'required !mt-0' : '' }}"
                    >
                        @lang('shop::app.checkout.onepage.address.state')
                    </x-shop::form.control-group.label>

                    <template v-if="states">
                        <template v-if="haveStates">
                            <x-shop::form.control-group.control
                                type="select"
                                ::name="controlName + '.state'"
                                ::value="address.state"
                                rules="{{ core()->isCheckoutFieldRequired('state') ? 'required' : '' }}"
                                :label="trans('shop::app.checkout.onepage.address.state')"
                                :placeholder="trans('shop::app.checkout.onepage.address.state')"
                            >
                                <option value="">
                                    @lang('shop::app.checkout.onepage.address.select-state')
                                </option>

                                <option
                                    v-for='(state, index) in states[selectedCountry]'
                                    :value="state.code"
                                >
                                    @{{ state.default_name }}
                                </option>
                            </x-shop::form.control-group.control>
                        </template>

                        <template v-else>
                            <x-shop::form.control-group.control
                                type="text"
                                ::name="controlName + '.state'"
                                ::value="address.state"
                                rules="{{ core()->isCheckoutFieldRequired('state') ? 'required' : '' }}"
                                :label="trans('shop::app.checkout.onepage.address.state')"
                                :placeholder="trans('shop::app.checkout.onepage.address.state')"
                            />
                        </template>
                    </template>

                    <x-shop::form.control-group.error ::name="controlName + '.state'" />
                </x-shop::form.control-group>

                {!! view_render_event('bagisto.shop.checkout.onepage.address.form.state.after') !!}
            </div>

            <div class="grid grid-cols-2 gap-x-5 max-md:grid-cols-1">
                <!-- City -->
                <x-shop::form.control-group
                    v-if="isVisible('city')"
                >
                    <x-shop::form.control-group.label
                        class="{{ core()->isCheckoutFieldRequired('city') ? 'required !mt-0' : '' }}"
                    >
                        @lang('shop::app.checkout.onepage.address.city')
                    </x-shop::form.control-group.label>

                    <x-shop::form.control-group.control
                        type="text"
                        ::name="controlName + '.city'"
                        ::value="address.city"
                        rules="{{ core()->isCheckoutFieldRequired('city') ? 'required' : '' }}"
                        :label="trans('shop::app.checkout.onepage.address.city')"
                        :placeholder="trans('shop::app.checkout.onepage.address.city')"
                    />

                    <x-shop::form.control-group.error ::name="controlName + '.city'" />
                </x-shop::form.control-group>

                {!! view_render_event('bagisto.shop.checkout.onepage.address.form.city.after') !!}

                <!-- Postcode -->
                <x-shop::form.control-group
                    v-if="isVisible('postcode')"
                >
                    <x-shop::form.control-group.label
                        class="{{ core()->isCheckoutFieldRequired('postcode') ? 'required !mt-0' : '' }}"
                    >
                        @lang('shop::app.checkout.onepage.address.postcode')
                    </x-shop::form.control-group.label>

                    <x-shop::form.control-group.control
                        type="text"
                        ::name="controlName + '.postcode'"
                        ::value="address.postcode"
                        rules="{{ core()->isCheckoutFieldRequired('postcode') ? 'required' : '' }}|postcode"
                        :label="trans('shop::app.checkout.onepage.address.postcode')"
                        :placeholder="trans('shop::app.checkout.onepage.address.postcode')"
                    />

                    <x-shop::form.control-group.error ::name="controlName + '.postcode'" />
                </x-shop::form.control-group>

                {!! view_render_event('bagisto.shop.checkout.onepage.address.form.postcode.after') !!}
            </div>

            <!-- Phone Number -->
            <x-shop::form.control-group
                v-if="isVisible('phone')"
            >
                <x-shop::form.control-group.label
                    class="{{ core()->isCheckoutFieldRequired('phone') ? 'required !mt-0' : '' }}"
                >
                    @lang('shop::app.checkout.onepage.address.telephone')
                </x-shop::form.control-group.label>

                <x-shop::form.control-group.control
                    type="text"
                    ::name="controlName + '.phone'"
                    ::value="address.phone"
                    rules="{{ core()->isCheckoutFieldRequired('phone') ? 'required' : '' }}|phone"
                    :label="trans('shop::app.checkout.onepage.address.telephone')"
                    :placeholder="trans('shop::app.checkout.onepage.address.telephone')"
                />

                <x-shop::form.control-group.error ::name="controlName + '.phone'" />
            </x-shop::form.control-group>

            {!! view_render_event('bagisto.shop.checkout.onepage.address.form.phone.after') !!}
        </div>
    </script>
    @php
        $checkoutFormConfig = [
            'default_country' => core()->getConfigData('sales.checkout.form_fields.default_country') ?: 'PK',

            'use_same_address' => core()->getConfigData('sales.checkout.form_fields.use_for_shipping_default') ? 1 : 0,

            'fields' => [
                'company_name' => [
                    'show'     => (bool) core()->getConfigData('sales.checkout.form_fields.company_name_show'),
                    'required' => (bool) core()->getConfigData('sales.checkout.form_fields.company_name_required'),
                ],

                'first_name' => [
                    'show'     => (bool) core()->getConfigData('sales.checkout.form_fields.first_name_show'),
                    'required' => (bool) core()->getConfigData('sales.checkout.form_fields.first_name_required'),
                ],

                'last_name' => [
                    'show'     => (bool) core()->getConfigData('sales.checkout.form_fields.last_name_show'),
                    'required' => (bool) core()->getConfigData('sales.checkout.form_fields.last_name_required'),
                ],

                'email' => [
                    'show'     => (bool) core()->getConfigData('sales.checkout.form_fields.email_show'),
                    'required' => (bool) core()->getConfigData('sales.checkout.form_fields.email_required'),
                ],

                'vat_id' => [
                    'show'     => (bool) core()->getConfigData('sales.checkout.form_fields.vat_id_show'),
                    'required' => (bool) core()->getConfigData('sales.checkout.form_fields.vat_id_required'),
                ],

                'address' => [
                    'show'     => (bool) core()->getConfigData('sales.checkout.form_fields.address_show'),
                    'required' => (bool) core()->getConfigData('sales.checkout.form_fields.address_required'),
                ],

                'country' => [
                    'show'     => (bool) core()->getConfigData('sales.checkout.form_fields.country_show'),
                    'required' => (bool) core()->getConfigData('sales.checkout.form_fields.country_required'),
                ],

                'state' => [
                    'show'     => (bool) core()->getConfigData('sales.checkout.form_fields.state_show'),
                    'required' => (bool) core()->getConfigData('sales.checkout.form_fields.state_required'),
                ],

                'city' => [
                    'show'     => (bool) core()->getConfigData('sales.checkout.form_fields.city_show'),
                    'required' => (bool) core()->getConfigData('sales.checkout.form_fields.city_required'),
                ],

                'postcode' => [
                    'show'     => (bool) core()->getConfigData('sales.checkout.form_fields.postcode_show'),
                    'required' => (bool) core()->getConfigData('sales.checkout.form_fields.postcode_required'),
                ],

                'phone' => [
                    'show'     => (bool) core()->getConfigData('sales.checkout.form_fields.phone_show'),
                    'required' => (bool) core()->getConfigData('sales.checkout.form_fields.phone_required'),
                ],
            ],
        ];
    @endphp

    <script>
        window.checkoutFormConfig = @json($checkoutFormConfig);
    </script>

    <script type="module">
        app.component('v-checkout-address-form', {
            template: '#v-checkout-address-form-template',

            props: {
                controlName: {
                    type: String,
                    required: true,
                },

                address: {
                    type: Object,

                    default: () => ({
                        id: 0,
                        company_name: '',
                        first_name: '',
                        last_name: '',
                        email: '',
                        address: [],
                        country: '',
                        state: '',
                        city: '',
                        postcode: '',
                        phone: '',
                    }),
                },
            },

            data() {
                const config = window.checkoutFormConfig || {};

                return {
                    selectedCountry: this.address.country || config.default_country || 'PK',
                    countries: [],
                    states: null,
                    fieldConfig: config.fields || {},   // 👈 SAFE DEFAULT
                }
            },

            computed: {
                haveStates() {
                    return !! this.states[this.selectedCountry]?.length;
                },
            },

            mounted() {
                this.getCountries();

                this.getStates();
            },

            methods: {
                getCountries() {
                    this.$axios.get("{{ route('shop.api.core.countries') }}")
                        .then(response => {
                            this.countries = response.data.data;
                        })
                        .catch(() => {});
                },

                getStates() {
                    this.$axios.get("{{ route('shop.api.core.states') }}")
                        .then(response => {
                            this.states = response.data.data;
                        })
                        .catch(() => {});
                },
                
                isVisible(field) {
                    return this.fieldConfig?.[field]?.show === true;
                },

                isRequired(field) {
                    return this.isVisible(field)
                        && this.fieldConfig?.[field]?.required === true;
                },
            }
        });
    </script>
@endPushOnce
