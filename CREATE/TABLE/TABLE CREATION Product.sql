USE product_db;

-- DROP TABLE IF EXISTS product;


CREATE TABLE IF NOT EXISTS product(
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_stack BIGINT DEFAULT 0,
    product_price BIGINT DEFAULT NULL,
    product_category VARCHAR(255) NOT NULL,
    product_admin_id INT NOT NULL
) 
ENGINE = InnoDB;