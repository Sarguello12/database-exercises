CREATE DATABASE IF NOT EXISTS blog_app;

USE blog_app;

CREATE TABLE IF NOT EXISTS users(
    id  INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    job_title VARCHAR(100),
    address VARCHAR(200),
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)
);

DESC users;

# DROP TABLE blog_app.users;