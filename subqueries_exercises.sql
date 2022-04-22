USE employees;

SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no FROM employees
    WHERE first_name = 'Aamod'
    );

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager
    WHERE year(to_date) = 9999
    )
AND gender = 'F';

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no FROM dept_manager
    JOIN employees e ON e.emp_no = dept_manager.emp_no
    WHERE gender = 'F'
    AND to_date = '9999-01-01'
    );

SELECT CONCAT(first_name, ' ', last_name) AS name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE YEAR(to_date) = 9999 AND salary IN (
        SELECT MAX(salary)
        FROM salaries
    )
);


