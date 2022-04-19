USE codeup_test_db;

# SELECT * FROM albums;
update albums
set sales = (sales * 10);

# SELECT * FROM albums WHERE release_date > 1980;
update albums
set release_date = 1800
where release_date < 1980;

# SELECT * FROM albums WHERE artist = 'Michael Jackson';
update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';