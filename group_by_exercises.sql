SELECT title FROM titles
GROUP BY title ASC;

SELECT last_name FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%e'
GROUP BY last_name;