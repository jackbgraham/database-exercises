USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS name
FROM employees WHERE first_name = 'Maya'
ORDER BY last_name;

SELECT DAYOFMONTH(hire_date) FROM employees
WHERE first_name = 'Maya'
ORDER BY DAYOFMONTH(hire_date);
#day of the month where every employee named Maya was hired

SELECT NOW(); # current DTG

SELECT DATEDIFF(NOW(), hire_date) FROM employees
WHERE emp_no = 10006;
#displays the number of days ago employee 10006 began working

SELECT CONCAT('Hello ', 'Codeup', '!');

SELECT first_name
FROM employees
WHERE first_name LIKE '%sus%';