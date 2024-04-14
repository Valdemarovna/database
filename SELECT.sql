--____________2_task________________

SELECT name, time
FROM song
ORDER BY time DESC
LIMIT 1;

SELECT name
FROM song
WHERE time > '3:50:00';

SELECT name
FROM collection
WHERE year BETWEEN 2018 AND 2020;

SELECT 'name (alias)'
FROM artist
WHERE 'name (alias)' NOT LIKE '% %'

SELECT name
FROM song
WHERE name LIKE '%my%'


--____________3_task________________

SELECT g.name, COUNT(a."name (alias)")
FROM genre g
JOIN "genre-artist" ga USING (genre_id)
JOIN artist a USING (artist_id)
GROUP BY g.name;

SELECT COUNT(song.name)
FROM song
JOIN album a USING (album_id)
WHERE a.year BETWEEN 2019 AND 2020;

SELECT album.name, AVG(song.time)
FROM song
JOIN album USING (album_id)
GROUP BY album.name;

SELECT DISTINCT "name (alias)"
FROM artist
JOIN "artist-album" aa USING (artist_id)
JOIN album a USING (album_id)
WHERE a.year != 2020;

SELECT album.name
FROM album
JOIN "artist-album" USING (album_id)
JOIN artist a USING (artist_id)
WHERE a."name (alias)" LIKE '%Denver%';


--____________4_task________________

SELECT album.name
FROM album
JOIN "artist-album" USING (album_id)
JOIN "genre-artist" USING (artist_id)
JOIN genre USING (genre_id)
GROUP BY artist_id, album.name
HAVING COUNT (genre.name) >1;

SELECT song.name
FROM song
LEFT JOIN "song-collection" sc USING (song_id);
WHERE collection_id IS NULL

SELECT artist."name (alias)"
FROM artist
JOIN "artist-album" aa USING (artist_id)
JOIN song USING (album_id)
WHERE song.time =(SELECT MIN (time) FROM song);

SELECT album.name
FROM album
JOIN song USING (album_id)
GROUP BY album.name
HAVING count(album.name) = (SELECT count(song.name) FROM song GROUP BY album_id ORDER BY 1 DESC LIMIT 1);