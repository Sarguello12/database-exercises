USE codeup_test_db;
# delete all albums released after 1991
DELETE FROM albums WHERE release_date > 1991;

# delete all disco music
DELETE FROM albums WHERE genre = 'Disco';

# delete all Whitney Houston albums
DELETE FROM albums WHERE artist = 'Whitney Houston';