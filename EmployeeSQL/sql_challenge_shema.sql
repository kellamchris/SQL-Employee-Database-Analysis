-- Departments table
CREATE TABLE departments (
	department_number VARCHAR(10) NOT NULL,
	department_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (department_number)
);

SELECT * FROM departments;

--Titles table
CREATE TABLE titles (
	title_id VARCHAR (10) NOT NULL,
	title VARCHAR (30) NOT NULL,
	PRIMARY KEY (title_id)
);

SELECT * FROM titles;

-- Employees table
CREATE TABLE employees (
	employee_number INTEGER NOT NULL,
	title_id VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date DATE NOT NULL,	
	PRIMARY KEY (employee_number),
	FOREIGN KEY (title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;

--Department employees table
CREATE TABLE department_employees (
	employee_number INTEGER NOT NULL,
	department_number VARCHAR(10) NOT NULL,
	FOREIGN KEY (employee_number) REFERENCES employees(employee_number),
	FOREIGN KEY (department_number) REFERENCES departments(department_number),
	PRIMARY KEY (employee_number, department_number)
);

SELECT * FROM department_employees;

-- Department Manager table
CREATE TABLE department_manager (
	department_number VARCHAR(10) NOT NULL,
	employee_number INTEGER NOT NULL,
	FOREIGN KEY (employee_number) REFERENCES employees(employee_number),
	FOREIGN KEY (department_number) REFERENCES departments(department_number),
	PRIMARY KEY (department_number, employee_number)
);

SELECT * FROM department_manager;

-- Salaries table
CREATE TABLE salaries (
	employee_number INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	PRIMARY KEY (employee_number),
	FOREIGN KEY (employee_number) REFERENCES employees(employee_number)
);

SELECT * FROM salaries;



