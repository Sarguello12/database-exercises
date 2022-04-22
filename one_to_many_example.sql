USE codeup_test_db;

DROP TABLE quotes;

CREATE TABLE `quotes`
(
    `id` INT NOT NULL AUTO_INCREMENT,
    `content` VARCHAR(240) NOT NULL,
    `author`  VARCHAR(50)  NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 11
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;


INSERT INTO quotes (content, author)
VALUES ('The real voyage of discovery consists not in seeking new landscapes, but in having new eyes.',
        'Marcel Proust'),
       ('My destination is no longer a place, rather a new way of seeing.', 'Marcel Proust'),
       ('Reading is that fruitful miracle of a communication in the midst of solitude.', 'Marcel Proust'),
       ('Fairy tales are more than true: not because they tell us that dragons exist, but because they tell us that dragons can be beaten.',
        'Neil Gaiman'),
       ('I hope that in this year to come, you make mistakes. Because if you are making mistakes...you''re Doing Something.',
        'Neil Gaiman'),
       ('I hope you will have a wonderful year, that you''ll dream dangerously and outrageously, that you''ll make something that didn''t exist before you made it',
        'Neil Gaiman');

CREATE TABLE authors
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    author_name VARCHAR(50)  NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO authors (author_name)
VALUES ('Marcel Proust'),
       ('Neil Gaiman');


ALTER TABLE quotes
    ADD COLUMN author_id INT UNSIGNED NOT NULL;

UPDATE quotes
SET author_id = (SELECT id FROM authors WHERE author_name = 'Marcel Proust')
WHERE author = 'Marcel Proust';

UPDATE quotes
SET author_id = (SELECT id FROM authors WHERE author_name = 'Neil Gaiman')
WHERE author = 'Neil Gaiman';

ALTER TABLE quotes
    DROP COLUMN author;
ALTER TABLE quotes
    ADD CONSTRAINT quotes_author_id_fk FOREIGN KEY (author_id) REFERENCES authors (id);

# mySql variable
# SET @neil_gaiman_id := (SELECT id FROM authors WHERE author_name = 'Neil Gaiman');
#
# UPDATE quotes
# SET author_id = @neil_gaiman_id
# WHERE author = 'Neil Gaiman';
