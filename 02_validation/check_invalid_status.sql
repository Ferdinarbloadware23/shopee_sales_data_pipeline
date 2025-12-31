SELECT*
FROM staging_sales_detail
WHERE qty <=0
  OR price_unit <=0
  OR price_total <=0;
