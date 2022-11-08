USE employees;

SELECT emp_no, first_name, last_name FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT emp_no, first_name, last_name FROM employees
WHERE last_name LIKE 'E%';

SELECT emp_no, first_name, last_name FROM employees
WHERE last_name LIKE '%Q%';

SELECT emp_no, first_name, last_name FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT emp_no, first_name, last_name, gender FROM employees
WHERE gender = 'M' AND first_name IN ('Irena', 'Vidya', 'Maya');

SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT first_name, last_name FROM employees
WHERE last_name LIKE '%Q%' AND NOT last_name LIKE '%QU%';