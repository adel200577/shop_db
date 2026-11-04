USE orders_db;

-- DROP TABLE IF EXISTS order_;

CREATE TABLE IF NOT EXISTS order_(
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATETIME NOT NULL,
    order_address VARCHAR(255) NOT NULL,
    product_id INT NOT NULL,
    user_id INT NOT NULL,
		CONSTRAINT fk_product_id_for_order
			FOREIGN KEY (product_id)
				REFERENCES product_db.product(product_id),
		CONSTRAINT fk_user_id_for_order
			FOREIGN KEY (user_id)
				REFERENCES user_db.users(user_id)
);