USE codeup_test_db;

#Write SELECT statements to output each of the following with a caption:
#All albums in your table.
#Make all the albums 10 times more popular (sales * 10)
SELECT * FROM albums;
UPDATE albums
SET sales = (sales *10);
SELECT * FROM albums;

#All albums released before 1980
#Move all the albums before 1980 back to the 1800s.
SELECT * FROM albums WHERE release_date <(1980);
UPDATE albums
SET release_date = (release_date -100);
SELECT * FROM albums;

#All albums by Michael Jackson
#Change 'Michael Jackson' to 'Peter Jackson'
SELECT * FROM albums WHERE artist_name = 'Michael Jackson';
UPDATE albums
SET artist_name = 'Peter Jackson'
WHERE artist_name = 'Michael Jackson';
SELECT * FROM albums;


