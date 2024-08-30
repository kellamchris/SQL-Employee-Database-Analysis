--List the department number for each employee along with that employee’s employee number, last name, first name, and department name

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