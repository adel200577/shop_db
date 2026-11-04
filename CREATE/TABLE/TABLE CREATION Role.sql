USE person_role_db;

-- DROP TABLE IF EXISTS role_;


CREATE TABLE IF NOT EXISTS role_(
	role_status VARCHAR(5) PRIMARY KEY,
	person_id INT NOT NULL,
	CONSTRAINT fk_persons_admins
		FOREIGN KEY (person_id)
			REFERENCES person_db.person(person_id)
);