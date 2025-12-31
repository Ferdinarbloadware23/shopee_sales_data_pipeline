INSERT INTO sales_header (
    order_id,
    tanggal,
    platform,
    gross_amount,
    net_amount,
    status
)
SELECT
    order_id,
    tanggal,
    platform,
    gross_amount,
    net_amount,
    status
FROM staging_sales_header;
