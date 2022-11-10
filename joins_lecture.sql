USE employees;

SELECT COUNT(emp_no) FROM salaries;

SELECT employees.last_name AS name, salaries.salary FROM employees
JOIN salaries ON salaries.emp_no = employees.emp_no;

USE codeup_test_db;

CREATE TABLE persons (
    person_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(25) NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY (person_id)
);

INSERT INTO persons (first_name, album_id)
VALUES ('Olivia', 29), ('Santiago', 27), ('Tareq', 15), ('Anaya', 28);

CREATE TABLE preferences (
person_id INT NOT NULL,
album_id INT NOT NULL
);

SELECT p.person_id, a.album_name FROM persons p
JOIN albums a ON p.album_id = a.album_id;

INSERT INTO preferences (person_id, album_id) VALUES (1, 12), (1, 5), (1, 22),
(1, 29), (2, 1), (2, 31), (2, 30), (3, 11), (3, 26), (3, 25);
#some of these have been deleted from the albums table, so it's only returning
#8 results instead of 10

SELECT p.first_name, a.album_name AS name FROM persons p JOIN preferences pref
ON p.person_id = pref.person_id JOIN albums a on pref.album_id = a.album_id;

CREATE DATABASE join_test_db;

USE join_test_db;

CREATE TABLE roles (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE users (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
role_id INT UNSIGNED DEFAULT NULL,
PRIMARY KEY (id),
FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

#Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
USE join_test_db;
INSERT INTO users (name, email, role_id) VALUES
('serpens', 'slither@scales.com', 2),
('scorpio', 'aquarib@pedipalps.com', 2),
('skeleton', 'bigbones@heikal.com', 2),
('scarab', 'abdashams@sunrise.com', null);

SELECT users.name as user_name, roles.name as role_name
FROM users JOIN roles ON users.role_id = roles.id;

#selecting as names the column in the joined table
#so here we are calling in the column of names as user name
#then we are calling in the role_id and this lines up with the roles table
#so we have to have created the users table after the roles table, because we are
#using the id number from that table to assign roles on the users table

SELECT users.name AS user_name, roles.name AS role_name
FROM users LEFT JOIN roles ON users.role_id = roles.id;

# the left join has more results than the plain join, because the left join will
#display the users that have null in the role section, while regular join will not

SELECT users.name AS user_name, roles.name AS role_name
FROM users RIGHT JOIN roles ON users.role_id = roles.id;

#this one prioritizes comparison with the right table/table B so here any users
#with a role value of null will not be displayed, because null is not a role
#the user name for commenter is displayed as null, because no users are assigned
#the role of commenter, which is why commenter did not appear in the left join

SELECT users.name as user_name, roles.name as role_name
FROM roles LEFT JOIN users ON users.role_id = roles.id;

#this is the same thing as the right join, but rewritten as a left join

#'associative table' -aka- 'join table'