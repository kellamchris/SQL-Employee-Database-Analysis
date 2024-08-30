--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name

CREATE VIEW sales_development_depts AS
SELECT e.employee_number AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "First Name", d.department_name AS "Department"
FROM employees e
JOIN department_employees de ON e.employee_number = de.employee_number
JOIN departments d ON de.department_number = d.department_number
WHERE d.department_name IN ('Sales', 'Development');

SELECT * FROM sales_development_depts;

DROP VIEW sales_development_depts;