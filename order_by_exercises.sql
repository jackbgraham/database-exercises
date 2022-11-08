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

SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT first_name, last_name FROM employees
WHERE last_name LIKE '%Q%' AND NOT last_name LIKE '%QU%';