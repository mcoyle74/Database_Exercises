SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
SELECT * FROM employees WHERE last_name LIKE 'E%';
SELECT * FROM employees WHERE birth_date = '1990-01-01' AND '1999-12-31';
SELECT * FROM employees WHERE birth_date LIKE '%12-25';