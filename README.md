# Shopee Sales Analytics Project

This repository contains a SQL-based data analytics project built from raw transaction data exported from Shopee Seller Centre.  
The project focuses on transforming raw sales data into a structured, analysis-ready database and generating meaningful business insights using SQL.

---

## Project Overview

The purpose of this project is to demonstrate core data analytics skills, including:

- relational data modeling  
- staging-based data processing  
- data validation  
- transformation into final analytical tables  
- business-oriented SQL analysis  

The dataset represents approximately one week of transaction data and is intentionally scoped to focus on sales analysis rather than inventory or automation pipelines.

---

## Scope and Assumptions

- The project focuses exclusively on **sales transactions**
- Inventory movement and stock reconciliation are intentionally excluded
- Data is processed in batch mode using CSV files
- All data has been anonymized and modified for portfolio purposes

---

## Database Schema Overview

### Core Tables

- `sales_header` — order-level transaction records  
- `sales_detail` — item-level transaction records  
- `master_product` — product master and pricing reference  

### Staging Tables

Used as an intermediate layer before loading clean data into final tables.

- `staging_sales_header` — temporary storage for raw order-level data  
- `staging_sales_detail` — temporary storage for raw item-level data  

### Supporting Tables

- `import_log` — stores metadata related to data import execution and processing status  

---

## Data Pipeline Workflow

1. Export raw transaction data from Shopee Seller Centre  
2. Clean and standardize raw data using spreadsheet tools  
3. Import CSV files into staging tables  
4. Perform data validation checks  
5. Insert validated records into final tables  
6. Execute analytical queries on curated datasets  

---

## Data Validation

Before inserting data into final tables, several validation rules are applied to ensure data quality:

- Detection of missing or unmapped product identifiers  
- Identification of duplicate order records  
- Validation of numeric fields such as quantity and price  
- Referential integrity checks between `sales_header` and `sales_detail`  

Validation logic is separated from transformation logic to maintain clarity and auditability.

---

## Analytical Queries

This project includes several commonly used analytical queries for sales analysis:

### Daily Sales Performance
Analyzes daily order volume and total revenue.

### Top Products by Revenue
Identifies the highest-performing products based on total sales value.

### Average Order Value (AOV)
Calculates the average revenue generated per order.

### Order Size Distribution
Analyzes the distribution of item quantities per order.

---

## Repository Structure

