---
name: SwatOrganics Project Overview
description: Overview of the SwatOrganics Bagisto-based Laravel e-commerce project, its structure and all customizations made since initial commit
type: project
---

# SwatOrganics — Bagisto Laravel E-Commerce

A customized instance of [Bagisto](https://bagisto.com) open-source Laravel e-commerce.

**Tech stack:** PHP 8.2+, Laravel, MySQL, Vite, Blade templates

**Why:** Custom e-commerce store for SwatOrganics brand, built on top of Bagisto framework.

## Project Structure

- `packages/Webkul/` — Core Bagisto packages (Admin, Product, Category, Shop, Sales, Shipping, etc.), customized in-place
- `packages/SwatOrganics/` — Custom package: `Checkout` (team's own business logic override)
- Standard Laravel scaffolding: `app/`, `routes/`, `database/`, `resources/`, `config/`

---

## All Customizations (since initial commit `8b26572`)

### 1. Checkout — Configurable Form Fields
- `packages/Webkul/Admin/src/Config/system.php` — Added `sales.checkout.form_fields` admin config section: controls field visibility/required rules, default country (Pakistan/PK), "use same address" toggle (hides checkbox in checkout)
- `packages/Webkul/Shop/src/Http/Requests/CartAddressRequest.php` — Address validation driven by the config
- `packages/Webkul/Shop/src/Resources/views/checkout/onepage/address/form.blade.php` — Checkout address form
- `packages/Webkul/Shop/src/Resources/views/checkout/onepage/address/guest.blade.php` — Guest checkout form
- `packages/Webkul/Shop/src/Resources/views/checkout/onepage/index.blade.php` — Checkout index
- `packages/Webkul/Shop/src/Resources/views/checkout/onepage/payment.blade.php` — Payment step
- `packages/Webkul/Shop/src/Resources/views/checkout/onepage/shipping.blade.php` — Shipping step
- `packages/Webkul/Sales/src/Repositories/OrderAddressRepository.php` — Order address repo changes
- `packages/Webkul/Core/src/Core.php` — Core helper changes for config-driven checkout
- `packages/SwatOrganics/Checkout/` — Custom checkout package

### 2. Shipping Logic
- `packages/Webkul/Shipping/src/Carriers/FlatRate.php` — Hide flat rate if order total is below minimum order amount threshold
- `packages/Webkul/Shipping/src/Carriers/Free.php` — Only show free shipping if order is above threshold
- Auto-select shipping/payment method if only one option is available

### 3. UI / Branding
- `packages/Webkul/Shop/src/Resources/views/components/layouts/footer/index.blade.php` — Renamed Webkul credits to SwatOrganics, added WhatsApp link
- Lang files (en, ar, de, fr, bn, ca, es, he, id, it, ja, nl, pl, pt_BR, ru, tr, uk, zh_CN) — Label/translation changes for checkout fields

### 4. Bug Fix
- `packages/Webkul/Admin/src/Resources/views/catalog/products/edit/controls.blade.php` — Fixed `:rules` binding by trimming `{}` from validation string: changed `:rules="{{ $attribute->validations }}"` to `:rules="'{{ trim($attribute->validations, '{} ') }}'"`

**How to apply:** When working on any of these areas, check the listed files first as they are already customized — don't assume stock Bagisto behavior.
