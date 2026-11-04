USE product_db;

UPDATE product
SET
	product_id = ?,
    product_stack = ?,
    product_price = ?,
    product_category = ?,
    prodcut_admin_id = ?
WHERE product_id = ?;