-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

CREATE VIEW hercules_b AS

SELECT first_name AS "First Name", last_name AS "Last Name", sex AS "Sex"
FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';

SELECT * FROM hercules_b;

DROP VIEW hercules_b;