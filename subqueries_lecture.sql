#SubQueries

USE employees;

SELECT birth_date FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_manager);
#birthdays from everyone who has been a manager

#From our employees database, we can use this example query to find all the department managers
# names and birth dates:

SELECT first_name, last_name, birth_date FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_manager)
LIMIT 10;
#the SubQuery is the line that starts with "where"
#basically a second 'SELECT' makes this a subquery/nested query

USE codeup_test_db;

# CREATE TABLE preferences (
# person_id INT,
# album_id INT,
# FOREIGN KEY (person_id)
# REFERENCES users(id),
# FOREIGN KEY (album_id)
# REFERENCES albums(id));

INSERT INTO preferences (person_id, album_id) VALUES ((SELECT person_id FROM persons WHERE first_name = 'Tareq'),
(SELECT album_id FROM albums WHERE album_name = 'Led Zeppelin IV'));