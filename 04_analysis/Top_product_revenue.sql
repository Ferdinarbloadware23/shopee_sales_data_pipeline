INSERT INTO sales_detail (
    order_id,
    id_product,
    qty,
    price_unit,
    price_total
)
SELECT
    order_id,
    id_product,
    qty,
    price_unit,
    price_total
FROM staging_sales_detail;
