```sql
CREATE TABLE master_product (
    id_product VARCHAR(100) PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(100),
    brand VARCHAR(100),
    cost_price DECIMAL(14,2),
    sell_price DECIMAL(14,2)
);

CREATE TABLE sales_header (
    order_id VARCHAR(50) PRIMARY KEY,
    tanggal DATETIME,
    platform VARCHAR(50),
    gross_amount DECIMAL(14,2),
    net_amount DECIMAL(14,2),
    status VARCHAR(50)
);

CREATE TABLE sales_detail (
    id_detail INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(50),
    id_product VARCHAR(100),
    qty INT,
    price_unit DECIMAL(14,2),
    price_total DECIMAL(14,2),
    CONSTRAINT fk_sales_header
        FOREIGN KEY (order_id) REFERENCES sales_header(order_id),
    CONSTRAINT fk_product
        FOREIGN KEY (id_product) REFERENCES master_product(id_product)
);
