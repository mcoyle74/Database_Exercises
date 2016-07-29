-- Find all employees with the same hire date as employee 101010.
SELECT e.emp_no, CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', e.hire_date
FROM employees AS e
WHERE hire_date IN (
	SELECT hire_date
	FROM employees
	WHERE emp_no = 101010
);

-- Find all the titles held by all employees w/ first name 'Aamod.'
SELECT title
FROM titles
WHERE emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE first_name = 'Aamod'
);

-- Find all the department managers that are female.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
WHERE emp_no IN (
	SELECT emp_no
	FROM dept_manager
)
AND gender = 'F';

-- BONUS Find all the department names that have female managers.
SELECT dept_name
FROM departments
WHERE dept_no IN (
	SELECT dept_no
	FROM dept_manager
	WHERE emp_no IN (
		SELECT emp_no
		FROM employees
		WHERE gender = 'F')
);

-- EXTRA BONUS: determining gender/par disparity...
-- Historic average salary of female vs. male employees
SELECT gender, AVG(salary) AS 'Historic Avg Salary'
FROM salaries AS s
JOIN employees AS e ON e.emp_no = s.emp_no
GROUP BY gender;

-- Current average salaries of female vs. male employees
SELECT gender, AVG(salary) AS 'Current Avg Salary'
FROM salaries AS s
JOIN employees AS e ON e.emp_no = s.emp_no
WHERE to_date = '9999-01-01'
GROUP BY e.gender;

-- Historic average salaries of female vs. male managers

-- Current average salaries of female vs. male managers