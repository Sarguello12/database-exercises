USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date INT UNSIGNED,
    sales FLOAT(9,2),
    genre VARCHAR(100)
);

DESCRIBE albums;
SHOW CREATE TABLE albums;