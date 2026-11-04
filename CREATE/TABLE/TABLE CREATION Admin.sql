USE admin_db;

-- DROP TABLE IF EXISTS admin_;


CREATE TABLE IF NOT EXISTS admin_(
	admin_id INT PRIMARY KEY AUTO_INCREMENT,
    admin_fname VARCHAR(255) NOT NULL,
    admin_lname VARCHAR(255) NOT NULL,
    admin_password VARCHAR(255) NOT NULL,
		admin_status VARCHAR(5) NOT NULL,
			CONSTRAINT fk_admin_role
				FOREIGN KEY (admin_status)
					REFERENCES person_role_db.role_(role_status)
)
ENGINE = InnoDB;