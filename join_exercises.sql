USE employees;


SELECT d.dept_name AS Department_name, CONCAT(e.first_name, ' ', e.last_name)
FROM employees e
        JOIN dept_manager dm ON dm.emp_no = e.emp_no
        JOIN departments d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';


SELECT d.dept_name AS Department_name, CONCAT(e.first_name, ' ', e.last_name)
FROM employees e
         JOIN dept_manager dm ON dm.emp_no = e.emp_no
         JOIN departments d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';


SELECT t.title AS title, count(t.title)
FROM titles t
JOIN dept_emp de ON de.emp_no = t.emp_no
WHERE year(de.to_date) = 9999
    AND year(t.to_date) = 9999
    AND de.dept_no = 'd009'
GROUP BY t.title;


SELECT d.dept_name AS Department_name, CONCAT(e.first_name, ' ', e.last_name), s.salary
FROM employees e
         JOIN dept_manager dm ON dm.emp_no = e.emp_no
         JOIN departments d ON d.dept_no = dm.dept_no
         JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND year(s.to_date) = 9999;


SELECT concat(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department, CONCAT(e2.first_name, ' ', e2.last_name)
FROM employees e
        JOIN dept_emp de ON e.emp_no = de.emp_no
        JOIN departments d ON de.dept_no = d.dept_no
        JOIN dept_manager dm ON dm.dept_no = d.dept_no
        JOIN employees e2 ON dm.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01';