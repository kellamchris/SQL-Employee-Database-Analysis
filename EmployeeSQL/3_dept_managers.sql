--List the manager of each department along with their department number, department name, employee number, last name, and first name

CREATE VIEW dept_managers AS
SELECT dm.employee_number AS "Employee Number", dm.department_number AS "Department Number",
	(SELECT d.department_name
	FROM departments d
	WHERE d.department_number = dm.department_number) AS "Department",
		(SELECT e.first_name
		FROM employees e
		WHERE e.employee_number = dm.employee_number) AS "First Name",
		(SELECT e.last_name
		FROM employees e
		WHERE e.employee_number = dm.employee_number) AS "Last Name"
FROM department_manager dm;

SELECT * FROM dept_managers;

DROP VIEW dept_managers;