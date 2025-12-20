
---

## Database Schema Overview

### Core Transaction Tables
- `sales_header` — order-level transactions
- `sales_detail` — item-level transactions
- `stock_in` — inventory inflow records
- `master_product` — product master & pricing reference
- `supplier` — supplier reference data

### Staging Tables
- `staging_sales_header`
- `staging_sales_detail`
- `staging_stock_in`

Staging tables act as a **buffer layer** to:
- store raw imported data
- validate structure and values
- prevent dirty data from entering final tables

### Supporting Tables
- `import_log` — tracks file imports and processing status
- `financial_log` — records financial-related entries

### Analytical Views
- `current_stock` — current inventory position per product
- `daily_sales_summary` — daily order and revenue aggregation

---

## Data Cleaning & Transformation

Key transformations performed in this project include:

- Separating order-level and item-level data
- Normalizing SKU values into internal `id_product`
- Cleaning numeric fields (price, quantity, totals)
- Removing invalid or incomplete rows at the staging layer
- Enforcing referential integrity before final inserts

All transformations are executed using **SQL-only workflows**.

---

## Workflow Summary

1. Export completed orders from Shopee Seller Centre
2. Convert Excel files into CSV format
3. Import CSV files into staging tables
4. Validate and clean staging data
5. Insert clean records into final transaction tables
6. Generate analytical views for reporting

---

## Example Use Cases

- Daily sales reporting
- Product-level revenue analysis
- Inventory movement tracking
- Stock availability monitoring
- Data validation and reconciliation

---

## Limitations

- Analysis limited to one week of data
- SKU mapping performed manually
- No automated ingestion pipeline
- No dashboard or visualization layer

These limitations are intentional to maintain focus on **data modeling and SQL
pipeline design**.

---

## Future Improvements

- Automate data ingestion from Shopee exports
- Extend analysis to longer periods
- Add revenue and margin analysis
- Build dashboard visualizations
- Introduce incremental loading logic

---

## What This Project Demonstrates

- Handling messy real-world marketplace data
- Designing staging-to-final data pipelines
- Applying relational data modeling best practices
- Writing clean, production-style SQL
- Building analysis-ready database structures

---

## Technologies Used

- MySQL
- DBeaver
- Microsoft Excel (Shopee exports)
- SQL (DDL, DML, Views)

---

## Disclaimer

This project uses **anonymized and modified data** derived from Shopee Seller
Centre exports for educational and portfolio purposes only.
