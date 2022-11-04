USE codeup_test_db;

DROP TABLE IF EXISTS `users`;

create table users (
    user_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR NOT NULL;
    last_name VARCHAR NOT NULL;
    password VARCHAR NOT NULL;
)