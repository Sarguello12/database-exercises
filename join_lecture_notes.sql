# USE employees;
#
# SELECT employees.last_name AS name, salaries.salary AS salary
# FROM employees JOIN salaries
# ON employees.emp_no = salaries.emp_no;

# CREATE DATABASE join_test_db;

# USE join_test_db;

# CREATE TABLE roles (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        name VARCHAR(100) NOT NULL,
#                        PRIMARY KEY (id)
# );

# CREATE TABLE users (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        name VARCHAR(100) NOT NULL,
#                        email VARCHAR(100) NOT NULL,
#                        role_id INT UNSIGNED DEFAULT NULL,
#                        PRIMARY KEY (id),
#                        FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
#                                              ('bob', 'bob@example.com', 1),
#                                              ('joe', 'joe@example.com', 2),
#                                              ('sally', 'sally@example.com', 3),
#                                              ('adam', 'adam@example.com', 3),
#                                              ('jane', 'jane@example.com', null),
#                                              ('mike', 'mike@example.com', null);
# USE join_test_db;
#
# SELECT users.name AS user_name, roles.name AS role_name FROM roles, users LEFT JOIN roles r ON users.role_id = r.id;

USE codeup_test_db;

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
                           `id` int unsigned NOT NULL AUTO_INCREMENT,
                           `first_name` varchar(25) NOT NULL,
                           `album_id` int unsigned NOT NULL,
                           PRIMARY KEY (`id`),
                           KEY `album_id` (`album_id`),
                           CONSTRAINT `persons_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `persons` VALUES (1,'Olivia',1),(2,'Santiago',2),(3,'Tareq',5),(4,'Anaya',6);

SELECT p.first_name, a.name FROM persons p JOIN albums a ON p.album_id = a.id;

SELECT p.first_name, a.name FROM persons p LEFT JOIN albums a ON p.album_id = a.id;

SELECT p.first_name, a.name FROM persons p RIGHT JOIN albums a ON p.album_id = a.id;

CREATE TABLE preferences (
    person_id int unsigned NOT NULL,
    album_id int unsigned NOT NULL,
    CONSTRAINT preferences_person_id_fk FOREIGN KEY (person_id) REFERENCES persons (id),
    CONSTRAINT preferences_album_id_fk FOREIGN KEY (album_id) REFERENCES albums (id)
);

INSERT INTO preferences (person_id, album_id) VALUES (1, 1), (1, 2), (1, 5), (1, 6), (2, 7), (2, 9), (2, 11), (3, 12), (3, 14), (3, 16);

SELECT p.first_name AS name, a.name AS album FROM persons p JOIN preferences pf ON p.id = pf.person_id JOIN albums a ON pf.album_id = a.id;