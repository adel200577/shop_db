USE product_db;

SELECT *
FROM product 
WHERE product_id >= ?
ORDER BY product_id ASC
LIMIT ?; 
