-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Commands used in lecture:
--
-- SELECT * FROM albums;
-- SELECT id, title FROM albums ORDER BY title;
-- SELECT * FROM tracks;
-- SELECT id, name, album_id FROM tracks;
-- SELECT COUNT (*) FROM tracks;
-- SELECT COUNT (*) FROM albums;
-- \d
-- \d tracks
-- SELECT SUM(unit_price) FROM tracks;
-- SELECT id, name FROM tracks WHERE album_id = 6;
-- SELECT SUM(unit_price) FROM tracks WHERE album_id = 6;
-- SELECT id, name FROM tracks WHERE album_id = 6 ORDER BY id;
-- SELECT id, name FROM tracks WHERE album_id = 6 ORDER BY name;
-- ELECT id, name, album_id FROM tracks WHERE name = 'All I Really Want';
-- SELECT id, name, album_id FROM tracks WHERE name LIKE '%Love%';
-- SELECT id, name, album_id FROM tracks WHERE name LIKE '%Love%' ORDER BY name;
-- SELECT id, name, album_id FROM tracks WHERE name ILIKE '%Love%' ORDER BY name;
-- SELECT id, name, unit_price FROM tracks WHERE unit_price > 0.99 ORDER BY name;

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.(id 51)

SELECT title FROM albums WHERE artist_id = 51;

-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".

-- media type id is 3 for protected MPEG-4 video file:

SELECT COUNT (*) FROM tracks  WHERE media_type_id = 3;

-- 3) Find the least expensive track that has the genre "Electronica/Dance".

-- genre_id = 15

SELECT id, name, unit_price FROM tracks WHERE unit_price < 1.0 AND genre_id = 15 ORDER BY name;

-- 4) Find the all the artists whose names start with A.

SELECT name FROM artists WHERE name LIKE 'A%';

-- 5) Find all the tracks that belong to playlist 1.

-- id range of tracks on playlist 1: 1-3290

 SELECT id, name FROM tracks WHERE id < 3290 ORDER BY id;
