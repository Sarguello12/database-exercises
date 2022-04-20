USE employees;

DESCRIBE titles;
DESCRIBE salaries;
DESCRIBE departments;

USE codeup_test_db;

DESCRIBE albums;
ALTER TABLE albums
ADD UNIQUE (name);

DESCRIBE albums;