---
name: SwatOrganics Store Data — Categories, Products, Attributes & Settings
description: All categories, products, custom attributes, and admin settings configured in the SwatOrganics Bagisto store
type: project
---

# Store Data & Configuration

## Categories (10 active, all under Root ID:1)

| ID | Name |
|----|------|
| 4 | Nuts With Shell |
| 5 | Nuts Without Shell |
| 6 | Seeds |
| 7 | Dates |
| 8 | Mixed Dry Fruits |
| 9 | Dried Fruits |
| 10 | Gift Boxes |
| 11 | Honey |
| 12 | SuperFoods |
| 13 | Oils |

---

## Products (24 configurable — all active)

Each configurable has 3 simple variants. Most use `net_weight` (250g/500g/1kg); exceptions noted.

| ID | SKU Prefix | Product Name | Category | Variants / Prices (PKR) |
|----|------------|-------------|----------|--------------------------|
| 9 | ALM-CONF | Premium Almonds (Badam) | Nuts Without Shell | 250g/400 · 500g/800 · 1kg/1600 |
| 13 | CAS-CONF | Premium Cashews (Kaju) | Nuts Without Shell | 250g/400 · 500g/800 · 1kg/1600 |
| 17 | WAL-KERN-CONF | Walnut Kernels (Akhrot Giri) | Nuts Without Shell | 250g/1200 · 500g/2200 · 1kg/4000 |
| 21 | WAL-SHELL-CONF | Walnuts With Shell (Akhrot) | Nuts With Shell | 250g/400 · 500g/800 · 1kg/1600 |
| 25 | AJWA-CONF | Ajwa Dates (Premium Quality) | Dates | 250g/500 · 500g/1000 · 1kg/1500 |
| 29 | MAB-CONF | Mabroom Dates | Dates | 250g/500 · 500g/1000 · 1kg/1500 |
| 33 | RAI-GOLD-CONF | Golden Raisins (Kishmish) | Dried Fruits | 250g/500 · 500g/1000 · 1kg/1500 |
| 37 | RAI-BLK-CONF | Black Raisins (Kishmish Siyah) | Dried Fruits | 250g/1000 · 500g/1000 · 1kg/4000 |
| 41 | APR-CONF | Dried Apricots (Khubani) | Dried Fruits | 250g/500 · 500g/1500 · 1kg/2000 |
| 45 | FIG-CONF | Dried Figs (Anjeer) | Dried Fruits | 250g/1000 · 500g/2000 · 1kg/1500 |
| 49 | CHIA-CONF | Chia Seeds (Superfood) | Seeds / SuperFoods | 100g/100 · 250g/1000 · 500g/3000 |
| 53 | PUM-CONF | Pumpkin Seeds | Seeds / SuperFoods | 250g/1000 · 500g/1500 · 1kg/1500 |
| 57 | SIDR-CONF | Pure Sidr Honey | Honey | 250g/1800 · 500g/3200 · 1kg/6000 |
| 61 | ACA-CONF | Pure Acacia Honey | Honey | 250g/? · 500g/? · 1kg/? |
| 65 | MIX-CONF | Premium Dry Fruit Mix | Mixed Dry Fruits / Honey | 250g/? · 500g/? · 1kg/? |
| 69 | COMBO-CONF | Honey & Nuts Energy Combo | Gift Boxes / Honey | 250g/? · 500g/? · 1kg/? |
| 72 | PST-CONF | Pistachios With Shell | Nuts With Shell | 250g/? · 500g/? · 1kg/? |
| 76 | BAS-CONF | Basil Seeds (Tukhmalanga) | Seeds | 100g/? · 250g/? · 500g/? |
| 80 | MOR-CONF | Moringa Powder (Superfood) | SuperFoods | 100g/? · 250g/? · 500g/? |
| 84 | ASH-CONF | Ashwagandha Powder | SuperFoods | 100g/? · 250g/? · 500g/? |
| 88 | PRU-CONF | Prunes (Dried Aloo Bukhara) | Dried Fruits | 250g/? · 500g/? · 1kg/? |
| 92 | OLV-CONF | Extra Virgin Olive Oil | Oils | 250ml/? · 500ml/? · 1L/? (volume attr) |
| 96 | MAC-CONF | Maca Root Powder | SuperFoods | 100g/? · 250g/? · 500g/? |
| 100 | SHI-CONF | Shilajit (Pure Resin) | SuperFoods | 10g/? · 20g/? · 50g/? |

---

## Custom Attributes (user-defined)

| Attribute Code | Type | Configurable |
|----------------|------|-------------|
| `net_weight` | select | Yes — used for product variants (250g/500g/1kg) |
| `color` | select | Yes |
| `size` | select | Yes |
| `cost` | price | No |
| `brand` | select | No |
| `product_type` | select | No |
| `packaging` | select | No |
| `origin` | select | No |
| `processing` | select | No |
| `our_production` | boolean | No |
| `shelf_life` | text | No |
| `meta_description` | textarea | No |
| `length` / `width` / `height` | text | No |

---

## Key Settings (core_config)

### Checkout
- Default country: Pakistan (PK)
- Country / state / postcode fields: hidden
- Required fields: first_name, phone, city, address
- Last name / email: shown but not required
- Company, VAT, postcode, state: hidden
- Use same address for shipping: ON (checkbox hidden in checkout)
- Guest checkout: allowed
- Auto-select single shipping/payment method: ON

### Shipping
- **Standard Delivery (Flat Rate):** PKR 200 per order
- **Free Shipping:** orders above PKR 3,000
- Origin: Kabal, Swat, KPK, Pakistan | ZIP: 19201

### Payment
- **Cash on Delivery:** active (only method)
- PayPal, Money Transfer: inactive

### Orders & Invoices
- Order prefix: `SO-` (6 digits)
- Invoice prefix: `INV-` (6 digits)
- Invoice footer: SwatOrganics contact info + contact@swatorganics.com | WhatsApp: +92-3283444141
- Reorder: admin only (shop disabled)

### Storefront
- Header offer: "100% Pure Organic Products from Swat Valley."
- Products per page: 12, default sort: newest first, view: grid
- Social share: WhatsApp + Facebook enabled on product pages
- Custom share message: "Check out this 100% pure organic product from Swat Valley 🌿"
- WhatsApp floating button: enabled via custom CSS
- Mini cart: disabled
- Wishlist: disabled
- Compare: disabled
- Reviews: enabled for logged-in customers only (no guest reviews)

### Email
- From: contact@swatorganics.com | Swat Organics
- Notifications: new order, cancel order, shipment (to both admin and customer)

---

## Homepage Carousels (theme_customizations)

| ID | Title | Filter | Status |
|----|-------|--------|--------|
| 4 | New Products | `new=1, sort=name-asc, limit=12` | Active |
| 19 | Featured Products | `featured=1, sort=name-asc, limit=12` | Active |

Both are `channel_id=1`, `theme_code=default`.

---

## Product Featured / New Flags

| Flag | Product IDs |
|------|-------------|
| `featured=1, new=0` | Almonds(9), Cashews(13), Ajwa(25), Sidr Honey(57), Acacia Honey(61), Dry Fruit Mix(65), Honey Combo(69), Shilajit(100) |
| `new=1, featured=0` | Basil Seeds(76), Moringa(80), Ashwagandha(84), Prunes(88), Olive Oil(92), Maca(96) |
| `new=0, featured=0` | Walnut Kernels(17), Walnuts With Shell(21), Mabroom(29), Golden Raisins(33), Black Raisins(37), Apricots(41), Figs(45), Chia(49), Pumpkin(53), Pistachios(72) |

---

## Category-Specific Filterable Attributes (category_filterable_attributes)

| Category | Filters |
|----------|---------|
| Nuts With Shell (4) | price, net_weight, origin, processing |
| Nuts Without Shell (5) | price, net_weight, origin, processing |
| Seeds (6) | price, net_weight, origin, processing |
| Dates (7) | price, net_weight, origin, processing |
| Mixed Dry Fruits (8) | price, net_weight |
| Dried Fruits (9) | price, net_weight, origin, processing |
| Gift Boxes (10) | price, net_weight |
| Honey (11) | price, net_weight, origin, processing |
| SuperFoods (12) | price, net_weight, origin, processing |
| Oils (13) | price, origin, processing, volume |

Global search page filters (`is_filterable=1`): price(11), net_weight(30), origin(32), processing(33), volume(37).
Disabled globally: color, size, brand, packaging, our_production.

---

## Active Attribute Options (in-use only)

**net_weight (id:30):** 10g(63), 20g(64), 50g(16), 100g(17), 250g(18), 500g(19), 1kg(20)
**volume (id:37):** 250ml(56), 500ml(57), 1 Liter(58)

**origin (id:32) — all used:**
Swat Valley(27): Walnut Kernels, Walnuts With Shell, Apricots, Sidr Honey, Acacia Honey
Saudi Arabia(30): Ajwa, Mabroom | Afghanistan(28): Golden/Black Raisins
Pakistan(45): Dry Fruit Mix, Pumpkin Seeds | Pakistan/Mixed Origins(46): Honey Combo
Pakistan/Northern Regions(43): — | Northern Regions(44): —
Pakistan(Local)(31): — | Imported(32): Almonds, Cashews, Figs, Chia
Iran/USA(49): Pistachios | Pakistan/India(51): Basil Seeds, Moringa, Ashwagandha
Pakistan/Afghanistan(54): Prunes | Spain/Turkey/Imported(59): Olive Oil
Peru/Imported(62): Maca | Himalayan Region/Pakistan(65): Shilajit
Deleted unused: Gilgit Baltistan, Iran

**processing (id:33) — all used:**
Naturally Dried(34), Pure/Unprocessed(41), Mixed/Natural(47), Natural/Roasted Light(50),
Natural/Dried(52), Natural/Dried Powder(53), Natural/Sun-Dried(55), Cold Pressed/Extra Virgin(60), Natural/Purified Resin(66)
Deleted unused: Sun Dried, Machine Dried, Raw, Roasted, Raw/Natural

---

**How to apply:** When suggesting new products, pricing, or features, use this data as the current store baseline.
