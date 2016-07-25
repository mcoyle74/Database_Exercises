USE codeup_test_db;
SELECT 'The name of all albums by Pink Floyd' AS caption, name FROM albums WHERE artist = 'Pink Floyd';
SELECT 'The year Sgt. Pepper\'s Lonely Hearts Club Band was released' AS caption, release_date FROM albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';
SELECT 'The genre for Nevermind' AS caption, genre FROM albums WHERE name = 'Nevermind';
SELECT 'Which albums were released in the 1990s' AS caption, name FROM albums WHERE release_date < 2000 AND release_date > 1989;
SELECT 'Which albums had less than 20 million certified sales' AS caption, name FROM albums WHERE sales < 20;
SELECT 'All the albums in the rock genre. Is this all the rock albums in the table?' AS caption, name FROM albums WHERE genre = 'rock';