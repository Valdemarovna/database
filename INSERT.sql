INSERT INTO album
VALUES
(1, 'Cheers to the fall', '2015'),
(2, 'This is My Story', '1963'),
(3, 'White Sun 2', '2016'),
(4, 'Poems, Prayers & Promises', '1971'),
(5, 'Rhymes & Reasons', '1969'),
(6, 'Loud(Deluxe)', '2019');

INSERT INTO artist
VALUES
(1, 'Andria Day'),
(2, 'Dinah Washington'),
(3, 'White Sun'),
(4, 'John Denver'),
(5, 'Rihanna'),
(6, 'Drake');

INSERT INTO genre
VALUES
(1, 'Soul'),
(2, 'Jazz'),
(3, 'New Age'),
(4, 'Country'),
(5, 'Pop'),
(6, 'R&B');

INSERT INTO song
VALUES
(1, 'Rise Up', '4:13', 1),
(2, 'Mad About the boy', '2:48', 2),
(3, 'Ik Ardas Wehe Guru', '7:20', 3),
(4, 'Chattra Chakkra Varti', '2:48', 3),
(5, 'Take me home, country roads', '3:14', 4),
(6, 'Living on a Jet Plane', '3:37', 5),
(7, 'Man Down', '4:27', 6),
(8, 'Whats my name?', '4:23', 6);

INSERT INTO "artist-album"
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(4, 5),
(5, 6),
(6, 6);

INSERT INTO collection
VALUES
(1, 'Yoga Songs', '2022'),
(2, 'Best Road Trip Songs', '2023'),
(3, 'Motivation songs', '2016'),
(4, 'Classic jazz', '2007'),
(5, 'Amazing songs', '2020');

INSERT INTO "genre-artist"
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(6, 5);

INSERT INTO "song-collection"
VALUES
(1, 3),
(2, 4),
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 5);
