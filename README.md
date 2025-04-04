# SQL Employee Database Analysis  
**Christopher Kellam**  

**Languages and Tools Used in the Project:**  
- **Language:** SQL  
- **Tools:** PostgreSQL, pgAdmin, QuickDBD  

## **Project Overview**  
This project involved designing a relational database and analyzing employee data from the 1980s and 1990s for the fictional company Pewlett Hackard. The analysis includes data modeling, data engineering, and data analysis, using structured queries to extract meaningful insights about workforce trends.

The features include:  
- Creation of an Entity Relationship Diagram (ERD) to map out the database schema.  
- Table schema creation with appropriate data types, primary keys, foreign keys, and constraints.  
- Importing CSV data into a PostgreSQL database using pgAdmin.  
- SQL queries to answer key business questions regarding employee demographics, retirement eligibility, and department statistics.  

---

## **1. Data Source**  
The project uses six CSV files containing employee data, including:  
- employees.csv  
- departments.csv  
- dept_emp.csv  
- dept_manager.csv  
- salaries.csv  
- titles.csv  

---

## **2. Functionality**  

### **Database Design & Engineering:**  
- Sketched out table relationships using QuickDBD.  
- Defined table schemas with keys and constraints.  
- Created tables in PostgreSQL in the correct order to maintain referential integrity.  
- Imported CSV data into the tables using pgAdmin.  

### **Key Analyses Performed:**  
1. **Retirement Eligibility:**  
   - Identified employees born between 1952 and 1955.  
2. **Retirement Titles:**  
   - Counted how many retirement-eligible employees held each job title.  
3. **Retirement Mentorship Program:**  
   - Created a list of employees eligible to mentor based on birth date and title.  
4. **Department Analysis:**  
   - Analyzed current department headcount.  

---

## **3. Example Output**   
Displays analysis results including:  
- Number of retirement-eligible employees.  
- Titles of those employees.  
- Departmental headcounts.  

Example:

| emp_no | first_name | last_name | title           | birth_date | hire_date |
|--------|------------|-----------|------------------|------------|-----------|
| 10001  | Georgi     | Facello   | Senior Engineer  | 1953-09-02 | 1986-06-26 |

---

## **4. Submission Requirements**  
The project includes:  
- ERD PDF outlining table relationships.  
- SQL schema file used to create all tables.  
- SQL query file containing analysis queries.  
- This README file detailing the project.  

---
