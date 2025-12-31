SELECT
    order_id,
    SUM(qty) AS total_items
FROM sales_detail
GROUP BY order_id
ORDER BY total_items DESC;
