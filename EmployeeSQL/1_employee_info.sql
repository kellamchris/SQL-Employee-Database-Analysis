--List the employee number, last name, first name, sex, and salary of each employee.

CREATE VIEW employee_info AS
SELECT employee_number AS "Employee Number", last_name AS "Last Name", first_name AS "First Name", sex AS "Sex",
	(SELECT salary
	FROM salaries
	WHERE employees.employee_number = salaries.employee_number) AS "Salary"
FROM employees;

SELECT * FROM employee_info;

DROP VIEW employee_info;