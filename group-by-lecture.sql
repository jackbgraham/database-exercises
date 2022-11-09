#Aggregate Functions

USE employees;

SELECT COUNT(first_name) FROM employees;
#there are 300024 first names

SELECT COUNT(first_name), gender FROM employees GROUP BY gender;
#returns two numbers, one for total male names and one for female names

SELECT AVG(DATEDIFF(hire_date, birth_date))/365 FROM employees;
#average age of employees on their hire date /365 because it returns number in days

SELECT MIN(DATEDIFF(hire_date, birth_date))/365 FROM employees;
#employee who was youngest on their hire date

SELECT MAX(DATEDIFF(hire_date, birth_date))/365 FROM employees;
#employee who was oldest on their hire date


#COUNT(), AVG(), MIN(), MAX(), DISTINCT() are aggregators

SELECT first_name FROM employees GROUP BY first_name;
SELECT DISTINCT first_name FROM employees;
#same output

SELECT COUNT(first_name), first_name FROM employees
GROUP BY first_name
ORDER BY COUNT(first_name) DESC;
#outputs distinct names of employees and notes how many instances of that name exist

SELECT COUNT(*) FROM employees;

SELECT COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';

SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;

SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;

#The MySQL STDDEV () function calculates and returns the population standard
# deviation the fields in a particular column. If the specified row(s) doesn’t
# exist this function returns NULL. This function is a synonym for STDDEV_POP().

#In statistics, the standard deviation is a measure of the amount of variation
# or dispersion of a set of values. A low standard deviation indicates that the
# values tend to be close to the mean of the set, while a high standard deviation
# indicates that the values are spread out over a wider range.

#The center point of the bell curve

#VARIANCE() The MySQL VARIANCE() function is a synonym for VAR_POP() it calculates
# and returns the population standard variance of all the fields in a particular
# column i.e. this function treats the rows as the whole population (number of
# rows as the denominator. If the specified row(s) doesn’t exist this function
# returns NULL

#I read about variance, this seems like a lot, going to loop back around later

