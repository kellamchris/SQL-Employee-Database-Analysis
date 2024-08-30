-- 1. List the employee number, last name, first name, sex, and salary of each employee

CREATE VIEW employee_info AS
SELECT employee_number AS "Employee Number", last_name AS "Last Name", first_name AS "First Name", sex AS "Sex",
	(SELECT salary
	FROM salaries
	WHERE employees.employee_number = salaries.employee_number) AS "Salary"
FROM employees;

SELECT * FROM employee_info;

DROP VIEW employee_info;


-- 2. List the first name, last name, and hire date for the employees who were hired in 1986

SELECT first_name AS "First Name", last_name AS "Last Name", hire_date AS "Hire Date"
FROM employees
WHERE hire_date::TEXT LIKE '1986-%';


-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name

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


-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name

CREATE VIEW employee_depts AS
SELECT 
    e.employee_number AS "Employee Number", 
    e.last_name AS "Last Name", 
    e.first_name AS "First Name",
    de.department_number AS "Department Number",
    d.department_name AS "Department Name"
FROM 
    employees e
JOIN 
    department_employees de ON e.employee_number = de.employee_number
JOIN 
    departments d ON de.department_number = d.department_number;

SELECT * FROM employee_depts;

DROP VIEW employee_depts;


-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

CREATE VIEW hercules_b AS

SELECT first_name AS "First Name", last_name AS "Last Name", sex AS "Sex"
FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';

SELECT * FROM hercules_b;

DROP VIEW hercules_b;


-- 6. List each employee in the Sales department, including their employee number, last name, and first name

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


--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name

CREATE VIEW sales_development_depts AS
SELECT e.employee_number AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "First Name", d.department_name AS "Department"
FROM employees e
JOIN department_employees de ON e.employee_number = de.employee_number
JOIN departments d ON de.department_number = d.department_number
WHERE d.department_name IN ('Sales', 'Development');

SELECT * FROM sales_development_depts;

DROP VIEW sales_development_depts;


-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

SELECT last_name AS "Last Name", COUNT(last_name) AS "Count"
FROM employees
GROUP BY last_name
ORDER BY "Count" DESC;


