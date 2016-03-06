DROP SCHEMA IF EXISTS zenetar;
CREATE SCHEMA zenetar DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE zenetar;

CREATE TABLE track(
Id INT AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(100) NOT NULL,
Length INT,
About VARCHAR(500),
Navigation VARCHAR (200) NOT NULL
);

CREATE TABLE artists(
Id INT AUTO_INCREMENT PRIMARY KEY,
Artist VARCHAR(100) NOT NULL
);

CREATE TABLE genres(
Id INT AUTO_INCREMENT PRIMARY KEY,
Genre VARCHAR(25)
);

CREATE TABLE album(
Id INT AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR (100) NOT NULL,
Artist INT REFERENCES artists(Id),
PublishingTime YEAR,
Genre INT REFERENCES genres(Id),
About VARCHAR(1000)
);

CREATE TABLE tracklist(
AlbumId INT REFERENCES album(Id),
TrackId INT REFERENCES track(Id),
Number INT
);


INSERT INTO artists (Artist) VALUE('Pendulum');
INSERT INTO artists (Artist) VALUE('Bon Jovi');
INSERT INTO artists (Artist) VALUE('Imagine Dragons');

INSERT INTO genres (Genre) VALUE('Drum and Bass');
INSERT INTO genres (Genre) VALUE('Rock');
INSERT INTO genres (Genre) VALUE('Alternative Rock');

INSERT INTO album (Title, Artist, PublishingTime, Genre) VALUES('Immersion', 1, 2010, 1);
INSERT INTO album (Title, Artist, PublishingTime, Genre) VALUES('Slippery When Wet', 2, 1986, 2);
INSERT INTO album (Title, Artist, PublishingTime, Genre) VALUES('The Best of Bon Jovi', 2, 1994, 2);
INSERT INTO album (Title, Artist, PublishingTime, Genre) VALUES('One Wild Night', 2, 2011, 2);
INSERT INTO album (Title, Artist, PublishingTime, Genre) VALUES('Night Visions', 3, 2012, 3);

INSERT INTO track (Title, Length, Navigation) VALUES('Witchcraft', 253, 'C/Libraries/Music');
INSERT INTO track (Title, Length, Navigation) VALUES('Watercolour', 277, 'C/Libraries/Music');
INSERT INTO track (Title, Navigation) VALUES('The Island', 'C/Libraries/Music');
INSERT INTO track (Title, Navigation) VALUES('Crush', 'C/Libraries/Music');
INSERT INTO track (Title, Length, Navigation) VALUES('Livin'"'"' on a prayer', 252, 'C/Libraries/Music');
INSERT INTO track (Title, Length, Navigation) VALUES('You give love a bad name', 222, 'C/Libraries/Music');
INSERT INTO track (Title, Length, Navigation) VALUES('Social Disease', 258, 'C/Libraries/Music');
INSERT INTO track (Title, Length, Navigation) VALUES('Runaway', 230, 'C/Libraries/Music');
INSERT INTO track (Title, Length, Navigation) VALUES('One Wild Night', 283, 'C/Libraries/Music');
INSERT INTO track (Title, Navigation) VALUES('Radioactive', 'C/Libraries/Music');
INSERT INTO track (Title, Length, Navigation) VALUES('Demons', 177, 'C/Libraries/Music');
INSERT INTO track (Title, Length, Navigation) VALUES('Working Man', 235, 'C/Libraries/Music');

INSERT INTO tracklist VALUES(1, 1, 12);
INSERT INTO tracklist VALUES(1, 2, 16);
INSERT INTO tracklist VALUES(1, 3, 8);
INSERT INTO tracklist VALUES(1, 4, 5);
INSERT INTO tracklist VALUES(2, 5, 3);
INSERT INTO tracklist VALUES(3, 5, 1);
INSERT INTO tracklist VALUES(2, 6, 2);
INSERT INTO tracklist VALUES(3, 6, 7);
INSERT INTO tracklist VALUES(2, 7, 4);
INSERT INTO tracklist VALUES(2, 8, 14);
INSERT INTO tracklist VALUES(4, 8, 9);
INSERT INTO tracklist VALUES(4, 9, 1);
INSERT INTO tracklist VALUES(5, 10, 1);
INSERT INTO tracklist VALUES(5, 11, 4);
INSERT INTO tracklist VALUES(5, 12, 12);