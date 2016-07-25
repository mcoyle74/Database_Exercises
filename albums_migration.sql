USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	artist VARCHAR(50) NOT NULL,
	name VARCHAR(100) NOT NULL,
	release_date YEAR(4),
	sales DOUBLE(9,3),
	genre VARCHAR(100),
	PRIMARY KEY (id)
);