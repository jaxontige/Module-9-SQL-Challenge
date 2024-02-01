-- Drop tables

DROP TABLE departments
DROP TABLE employees
DROP TABLE dept_emp
DROP TABLE dept_managers
DROP TABLE salaries
DROP TABLE titles

-- Create table departments


CREATE TABLE departments (
  dept_no VARCHAR(10) PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL
);

select * from departments


-- Create table employees

CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL
);

select * from employees


--Create table dept_emp


CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp


-- Create table dept_managers

CREATE TABLE dept_managers (
 dept_no VARCHAR (10),
 emp_no INT,
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_managers



--Creating salaries table

CREATE TABLE salaries (
	emp_no BIGINT NOT NULL,
	salary BIGINT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries


--Creating titles table

CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR(20) NOT NULL
);

select * from titles