use employees;

SELECT concat(first_name, ' ', last_name) AS 'Employee Name'
FROM employees
WHERE last_name LIKE 'e%e';

SELECT *
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
AND day(birth_date) = 25
ORDER BY birth_date, hire_date DESC;

SELECT concat(first_name, ' ', last_name, ' ', DATEDIFF(now(), hire_date)) AS 'Employee time with company'
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25;