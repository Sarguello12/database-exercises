USE codeup_test_db;

select 'The name of all albums by Pink Floyd' as caption, name
from albums
where artist = 'Pink Floyd';

select 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' as caption, release_date
from albums
where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

select 'The genre for Nevermind' as caption, genre
from albums
where name = 'Nevermind';

select 'Which albums were released in the 1990s' as caption, name
from albums
where release_date between 1990 and 1999;

select 'Which albums had less than 20 million certified sales' as caption, name
from albums
where sales < 20000000;

select 'All the albums with a genre of "Rock"' as caption, name
from albums
where genre like '%Rock%';

select * from albums;