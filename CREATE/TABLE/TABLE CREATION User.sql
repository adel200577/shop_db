USE user_db;

-- DROP TABLE IF EXISTS users;


CREATE TABLE IF NOT EXISTS users(
	user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_fname VARCHAR(255) NOT NULL,
    user_lname VARCHAR(255) NOT NULL,
    user_password VARCHAR(255) NOT NULL,
		user_status_admin VARCHAR(5) NOT NULL,
        CONSTRAINT fk_user_role
			FOREIGN KEY(user_status_admin)
				REFERENCES person_role_db.role_(role_status)
);