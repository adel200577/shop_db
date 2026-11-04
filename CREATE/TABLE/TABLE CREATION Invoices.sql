USE invoices_db;

-- DROP TABLE IF EXISTS invoice;

CREATE TABLE IF NOT EXISTS invoice(
	invoice_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    order_id INT NOT NULL,
    user_id INT NOT NULL,
    invoice_date DATETIME NOT NULL,
    invoice_address VARCHAR(255) NOT NULL,
	invoice_payment BIGINT NOT NULL,
		CONSTRAINT fk_order_id
			FOREIGN KEY (order_id)
				REFERENCES orders_db.order_(order_id),
		CONSTRAINT fk_user_id
			FOREIGN KEY (user_id)
				REFERENCES user_db.users(user_id)
    );