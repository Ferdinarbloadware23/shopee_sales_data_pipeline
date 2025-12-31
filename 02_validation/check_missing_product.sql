SELECT DISTINCT s.id_product
FROM staging_sales_detail s
LEFT JOIN master_product m
  ON s.id_product = m.id_product
WHERE m.id_product IS NULL;
