SELECT e.emp_no, CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', e.hire_date
FROM employees AS e
WHERE hire_date IN (
	SELECT hire_date
	FROM employees
	WHERE emp_no = 101010
);