SELECT order_id, COUNT(*) AS cnt
FROM staging_sales_header
GROUP BY order_id
HAVING COUNT(*) > 1;
