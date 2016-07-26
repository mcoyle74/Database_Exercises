USE codeup_test_db;

SELECT 'All albums' AS 'caption', name, sales FROM albums;
UPDATE albums SET sales = sales * 10;
SELECT 'Albums with multiplied sales' AS 'caption', name, sales FROM albums;
SELECT 'Albums released before 1980' AS 'caption', name, release_date FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = release_date - 50 WHERE release_date < 1980;
SELECT 'Albums released before 1880' AS 'caption', name, release_date FROM albums WHERE release_date < 1980;
SELECT 'Michael Jackson albums' AS 'caption', name, artist FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT 'One glove to rule them all' AS 'caption', name, artist FROM albums WHERE artist = 'Peter Jackson';