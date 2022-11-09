USE employees;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;
#this doesn't make sense?
#it was some setting in the console

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name DESC;

SELECT emp_no, first_name, last_name FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no;

SELECT emp_no, first_name, last_name FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

SELECT emp_no, first_name, last_name FROM employees
WHERE last_name LIKE '%Q%';

SELECT emp_no, first_name, last_name FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT emp_no, first_name, last_name, gender FROM employees
WHERE gender = 'M' AND first_name IN ('Irena', 'Vidya', 'Maya');

SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

#Update your queries for employees whose names start and end with 'E'.
# Use concat() to combine their first and last name together as a single column
# in your results.
SELECT CONCAT(first_name, last_name) FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT CONCAT(first_name, ' ', last_name) AS 'full name' FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT first_name, last_name FROM employees
WHERE last_name LIKE '%Q%' AND NOT last_name LIKE '%QU%';

#Find all employees born on Christmas — 842 rows.
SELECT * FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;

#Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25
AND hire_date LIKE '199%';

#Change the query for employees hired in the 90s and born on Christmas
# such that the first result is the oldest employee who was hired last.
# It should be Khun Bernini.
SELECT * FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25
AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC;

#For your query of employees born on Christmas and hired in the 90s,
# use datediff() to find how many days they have been working at the company
# (Hint: You might also need to use now() or curdate()).
#DATEDIFF(date1, date2)

#SELECT DATEDIFF('2017/08/25', '2011/08/25');

SELECT *, DATEDIFF(CURDATE(), hire_date) FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25
ORDER BY DATEDIFF(CURDATE(), hire_date) DESC;


