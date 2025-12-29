CREATE TABLE staging_sales_header (
    tmp_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(50),
    tanggal DATETIME,
    platform VARCHAR(50),
    customer_name VARCHAR(255),
    gross_amount DECIMAL(14,2),
    net_amount DECIMAL(14,2),
    status VARCHAR(50),
    raw_json TEXT,
    import_filename VARCHAR(255),
    imported_at DATETIME
);

CREATE TABLE staging_sales_detail (
    tmp_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(50),
    id_product VARCHAR(100),
    variation VARCHAR(255),
    qty INT,
    price_unit DECIMAL(14,2),
    price_total DECIMAL(14,2),
    import_filename VARCHAR(255),
    imported_at DATETIME
);
