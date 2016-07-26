USE codeup_test_db;
SELECT 'All albums by Pink Floyd' AS caption, name FROM albums WHERE artist = 'Pink Floyd';
SELECT 'Year Sgt. Pepper\'s Lonely Hearts Club Band was released' AS caption, release_date FROM albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';
SELECT 'Nevermind genre' AS caption, genre FROM albums WHERE name = 'Nevermind';
SELECT 'Albums released in the 1990s' AS caption, name FROM albums WHERE release_date < 2000 AND release_date > 1989;
SELECT 'Albums with less than 20 million certified sales' AS caption, name FROM albums WHERE sales < 20;
SELECT 'All albums in the rock genre. Is this all the rock albums in the table?' AS caption, name FROM albums WHERE genre = 'rock';