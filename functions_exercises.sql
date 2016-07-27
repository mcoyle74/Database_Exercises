SELECT COUNT(*) FROM employees
	WHERE
		first_name = 'Irena' OR
		first_name = 'Vidya' OR
		first_name = 'Maya'
	GROUP BY gender;

SELECT * FROM employees
	WHERE last_name LIKE 'E%' OR last_name LIKE '%e'
	ORDER BY emp_no DESC;

SELECT * FROM employees
	WHERE last_name LIKE 'E%' AND last_name LIKE '%e'
	ORDER BY emp_no DESC;

SELECT * FROM employees
	WHERE birth_date LIKE '%12-25' AND (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
	ORDER BY birth_date, hire_date DESC;

SELECT * FROM employees
	WHERE birth_date LIKE '%12-25';

SELECT * FROM employees
	WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';