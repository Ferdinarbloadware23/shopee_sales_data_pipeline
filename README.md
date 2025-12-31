# Shopee Sales Data Analytics Project

This repository contains a SQL-based data analytics project built using transactional data exported from Shopee Seller Centre.

The project demonstrates how raw sales data can be transformed into a structured, analysis-ready database using a simple but realistic data pipeline approach.

---

## Project Objective

The goal of this project is to:

- Design a clean relational schema for sales data
- Load and validate raw transactional data
- Transform data into analytical tables
- Perform basic business analysis using SQL
- Demonstrate practical data analyst workflow and structure

This project focuses on **sales analytics only** and intentionally excludes inventory automation or real-time pipelines.

---

## Scope & Assumptions

- Data covers a limited time range (sample period)
- Data is imported manually from CSV exports
- Processing is done using SQL only
- Pipeline is executed manually (no scheduler)
- Focus is on clarity, structure, and correctness

---

## Database Schema Overview

### Core Tables

- `sales_header`  
  Stores order-level transaction information such as order date, platform, and total transaction value.

- `sales_detail`  
  Stores item-level transaction data including product, quantity, and pricing.

- `master_product`  
  Contains product reference data used for normalization and joins.

---

### Staging Tables

Staging tables are used as temporary storage for raw data before validation and transformation.

- `staging_sales_header`
- `staging_sales_detail`

---

## Data Pipeline Overview

The project follows a simple and clear pipeline:

1. Create schema and staging tables  
2. Load raw CSV data into staging tables  
3. Run validation checks to identify data issues  
4. Insert clean data into final tables  
5. Run analytical queries for insights  

---


