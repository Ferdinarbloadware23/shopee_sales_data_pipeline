# Shopee Sales Data Analytics Project

This repository contains a SQL-based data analytics project built from transactional data exported from Shopee Seller Centre.

The goal of this project is to demonstrate how raw sales data can be transformed into a clean, structured, and analysis-ready database using a simple and realistic data pipeline.

---

## Project Overview

This project focuses on basic sales analytics and data preparation workflows commonly used by data analysts.  
All processing is done using SQL, without automation tools or dashboards, to emphasize clarity of logic and data modeling.

The project covers:

- Designing relational tables for sales data  
- Loading and validating raw transaction data  
- Transforming data into clean analytical tables  
- Running basic business analysis queries  

---

## Scope & Assumptions

- Data represents a limited time period (sample dataset)
- Source data is manually exported from Shopee Seller Centre
- Processing is done using SQL only
- Pipeline execution is manual
- Focus is on correctness, structure, and readability

---

## Database Structure

### Core Tables

- `sales_header`  
  Stores order-level information such as order date, platform, and total transaction value.

- `sales_detail`  
  Stores item-level transaction details including product, quantity, and pricing.

- `master_product`  
  Reference table containing product metadata used for normalization and joins.

---

### Staging Tables

Staging tables temporarily store raw data before validation and transformation:

- `staging_sales_header`
- `staging_sales_detail`

---

## Data Pipeline Flow

The overall workflow follows these steps:

1. Create schema and staging tables  
2. Import raw CSV data into staging tables  
3. Run validation checks to detect data issues  
4. Insert clean records into final tables  
5. Perform analytical queries for insights  

---

## Validation Logic

Validation queries are used to ensure data quality before transformation, including:

- Checking missing or unmapped product IDs  
- Detecting duplicate order IDs  
- Identifying invalid quantity or pricing values  
- Ensuring consistency between header and detail records  

These checks help prevent incorrect or incomplete data from entering the final tables.

---

## Analytical Queries

The analysis layer focuses on answering common business questions such as:

- Daily sales performance  
- Top products by revenue  
- Average order value (AOV)  
- Order size distribution  

Example: daily sales performance query

```sql
SELECT
    DATE(tanggal) AS sales_date,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(gross_amount) AS total_revenue
FROM sales_header
GROUP BY sales_date
ORDER BY sales_date;
