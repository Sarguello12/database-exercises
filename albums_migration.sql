USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    artist CHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date INT UNSIGNED,
    sales FLOAT,
    genre CHAR(200)
);

DESCRIBE albums;
SHOW CREATE TABLE albums;