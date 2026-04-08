---
name: Product Insertion Mistakes to Avoid
description: Feedback on mistakes made when inserting Acacia Honey product directly into DB — apply to all future product insertions
type: feedback
---

When inserting products directly into the database, two mistakes were made on the Acacia Honey (first DB-inserted product):

1. **Variant names must include the weight suffix**
   Set variant names as `{Configurable Product Name} 250 G`, `{Configurable Product Name} 500 G`, `{Configurable Product Name} 1 KG` in both `product_flat` and `product_attribute_values`. The user had to manually fix these.
   **How to apply:** Always concatenate the parent product name + weight label for each variant name. Use: 250 G / 500 G / 1 KG.

2. **Price values showing with .0000 decimals**
   Prices stored as floats (e.g. `1200.00`) displayed as `1200.0000` in admin — the user had to go in and re-fix each price.
   **Why:** MySQL DECIMAL(12,4) stores 4 decimal places; the admin reads the raw value. Re-saving via admin normalizes the display.
   **How to apply:** Store prices as plain integers (e.g. `1200`, not `1200.00` or `1200.0000`) in both `product_flat.price` and `product_attribute_values.float_value` for price/weight attributes. PHP `intval()` or just passing `1200` directly instead of `1200.00` avoids the trailing zeros.
