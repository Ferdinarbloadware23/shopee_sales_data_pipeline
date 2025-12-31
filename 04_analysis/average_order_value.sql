SELECT
    ROUND(
        SUM(gross_amount) / COUNT(DISTINCT order_id),
        2
    ) AS avg_order_value
FROM sales_header;
