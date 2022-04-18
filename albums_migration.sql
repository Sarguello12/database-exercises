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

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('EARTHGANG', 'Mirrorland', 2019, 98234.56, 'Hip hop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Action Bronson', 'Blue Chips 7000', 2017, 198564.26, 'Hip hop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Benny The Butcher', 'Pyrex Picasso', 2021, 167524.31, 'Hip hop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Freddie Gibbs', 'Freddie', 2018, 208324.26, 'Hip hop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Kodak Black', 'Painting Pictures', 2017, 138534.18, 'Hip hop');

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Madvillian', 'Madvillainy', 2004, 323412.50, 'Hip hop'),
    ('Jonwayne', 'That''s O.K', 2016, 29234.25, 'Hip hop'),
    ('Denzel Curry', 'Melt My Eyez See Your Future', 2022, 234534.78, 'Hip hop'),
    ('Kanye West', 'Graduation', 2007, 509134.98, 'Hip hop'),
    ('Mac Miller', 'GO:OD AM', 2015, 408784.01, 'Hip hop');

SELECT * FROM albums WHERE release_date > 2010;
# SELECT artist FROM albums WHERE sales BETWEEN 10000 AND 1500000;

# UPDATE albums SET genre = 'Rap'
# WHERE genre = "Hip hop";

# DELETE FROM albums WHERE release_date > 2021;

# deletes everything!!!!
# TRUNCATE albums;