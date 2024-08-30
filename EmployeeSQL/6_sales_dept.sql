--List each employee in the Sales department, including their employee number, last name, and first name

CREATE VIEW sales_dept AS

SELECT employee_number AS "Employee Number", last_name AS "Last Name", first_name AS "First Name"
FROM employees
WHERE employee_number IN
	(
	SELECT employee_number
	FROM department_employees
	WHERE department_number IN	
		(
		SELECT department_number
		FROM departments
		WHERE department_name = 'Sales'
		)
	);

SELECT * FROM sales_dept;

DROP VIEW sales_dept;