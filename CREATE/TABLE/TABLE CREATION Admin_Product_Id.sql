USE admin_product_db;

-- DROP TABLE IF EXISTS admin_product_id;


CREATE TABLE IF NOT EXISTS admin_product_id(
	product_id INT NOT NULL,
    admin_id INT NOT NULL,
		CONSTRAINT fk_admin_id
			FOREIGN KEY (admin_id)
				REFERENCES admin_db.admin_(admin_id),
		CONSTRAINT fk_product_id
			FOREIGN KEY (product_id)
				REFERENCES product_db.product(product_id)
);