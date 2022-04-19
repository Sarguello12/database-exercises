USE codeup_test_db;
# delete all albums released after 1991
delete from albums where release_date > 1991;

# delete all disco music
delete from albums where genre = 'Disco';

# delete all Whitney Houston albums
delete from albums where artist = 'Whitney Houston';