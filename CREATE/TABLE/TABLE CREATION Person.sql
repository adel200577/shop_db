USE person_db;

-- DROP TABLE IF EXISTS person;


CREATE TABLE IF NOT EXISTS Person(
	person_id INT PRIMARY KEY AUTO_INCREMENT,
    person_fname VARCHAR(255),
    person_lname VARCHAR(255),
    person_email VARCHAR(255),
    person_password VARCHAR(255),
    person_status BOOLEAN
);