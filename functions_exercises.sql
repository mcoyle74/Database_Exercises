SELECT COUNT(*), gender
	FROM employees
	WHERE
		first_name = 'Irena' OR
		first_name = 'Vidya' OR
		first_name = 'Maya'
	GROUP BY gender;

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name'
	FROM employees
	WHERE last_name LIKE 'e%' OR last_name LIKE '%e'
	ORDER BY emp_no DESC;

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name'
	FROM employees
	WHERE last_name LIKE 'e%e'
	ORDER BY emp_no DESC;

SELECT emp_no, CONCAT(first_name, ' ', last_name) AS 'full_name', hire_date, datediff(curdate(), hire_date) AS 'tenure'
	FROM employees
	WHERE birth_date LIKE '%12-25' AND (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
	ORDER BY birth_date, hire_date ASC;

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name', birth_date
	FROM employees
	WHERE birth_date LIKE '%12-25';

SELECT *, COUNT(*) AS 'count'
	FROM employees
	WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
	GROUP BY first_name, last_name
	ORDER BY last_name;