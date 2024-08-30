--List the first name, last name, and hire date for the employees who were hired in 1986

SELECT first_name AS "First Name", last_name AS "Last Name", hire_date AS "Hire Date"
FROM employees
WHERE hire_date::TEXT LIKE '1986-%';