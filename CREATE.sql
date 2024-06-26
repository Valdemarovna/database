CREATE TABLE IF NOT EXISTS genre (genre_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL);

CREATE TABLE IF NOT EXISTS artist (artist_id SERIAL PRIMARY KEY,
"name (alias)" VARCHAR(60) NOT NULL);

CREATE TABLE IF NOT EXISTS "genre-artist" (genre_id INTEGER NOT NULL REFERENCES genre(genre_id),
artist_id INTEGER NOT NULL REFERENCES artist(artist_id));

CREATE TABLE IF NOT EXISTS album (album_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL,
"year" SMALLINT);

CREATE TABLE IF NOT EXISTS "artist-album" (artist_id INTEGER NOT NULL REFERENCES atrist(artist_id),
album_id INTEGER NOT NULL REFERENCES album(album_id));

CREATE TABLE IF NOT EXISTS song (song_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL,
time INTERVAL NOT NULL,
album_id INTEGER NOT NULL REFERENCES album(album_id));

CREATE TABLE IF NOT EXISTS collection (collection_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL,
"year" SMALLINT);

CREATE TABLE IF NOT EXISTS "song-collection" (song_id INTEGER NOT NULL REFERENCES song(song_id),
collection_id INTEGER NOT NULL REFERENCES collection(collection_id));