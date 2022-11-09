USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees AS emp
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;


#Return 10 employees in a result set named 'full_name' in the format of 'last name,
# first name' for each employee.

SELECT CONCAT(last_name, ' ', first_name) AS 'full_name' FROM employees
LIMIT 10;

#Add the date of birth for each employee as 'DOB' to the query.
SELECT birth_date, CONCAT(last_name, ' ', first_name) AS 'full_name', birth_date FROM employees
LIMIT 10;

#Update the query to format full name to include the employee number so it is
# formatted as 'employee number - last name, first name'.

SELECT CONCAT(emp_no, ' - ', last_name, ' ', first_name) AS 'full_name', birth_date FROM employees
LIMIT 10;