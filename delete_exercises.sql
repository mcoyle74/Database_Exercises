USE codeup_test_db;
SELECT 'Albums released after 1991' AS 'Date', name, release_date FROM albums WHERE release_date > 1991;
SELECT 'Disco' AS 'Genre', name, genre FROM albums WHERE genre = 'disco';
SELECT 'Whitney Houston albums' AS 'Artist', name, artist FROM albums WHERE artist = 'Whitney Houston';
