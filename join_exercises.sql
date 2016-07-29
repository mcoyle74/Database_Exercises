SELECT users.name AS user_name, roles.name AS role_name 
	FROM users
	JOIN roles ON users.role_id = roles.id;
		
SELECT
	users.name AS 'User Name',
	roles.id AS 'Role ID',
	roles.name AS 'Role'
	FROM users
	RIGHT JOIN roles ON users.role_id = roles.id;

SELECT roles.name AS 'Role', COUNT(users.name) AS 'Count'
	FROM users
	JOIN roles ON users.role_id = roles.id
	-- LEFT JOIN could be used above to also select users with NULL roles (3).
	GROUP BY roles.name;