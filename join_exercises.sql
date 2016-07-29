SELECT users.name AS user_name, roles.name AS role_name 
	FROM users
	JOIN roles ON users.role_id = roles.id;
		
SELECT
	users.name AS 'User Name',
	roles.id AS 'Role ID',
	roles.name AS 'Role'
	FROM users
	JOIN roles ON users.role_id = roles.id;
		
