USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    album_id INT NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(30) NOT NULL,
    album_name VARCHAR(50) NOT NULL,
    release_date INT NOT NULL,
    sales DOUBLE NOT NULL,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY (album_id)
#boop
);