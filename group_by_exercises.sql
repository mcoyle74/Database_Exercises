SELECT title FROM titles
GROUP BY title ASC;

SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%e'
GROUP BY first_name, last_name;