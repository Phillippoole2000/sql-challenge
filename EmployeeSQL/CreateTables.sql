DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments(
dept_no VARCHAR(4) NOT NULL,
dept_name VARCHAR (30) NOT NULL
);

CREATE TABLE dept_emp(
	emp_no int NOT NULL,
	dept_no VARCHAR (4) NOT NULL,
	from_date DATE NOT NULL,
	to_date	DATE NOT NULL
);

CREATE TABLE dept_manager(
	dept_no VARCHAR (4) NOT NULL,
	emp_no int NOT NULL,
	from_date DATE NOT NULL,
	to_date	DATE NOT NULL
);

CREATE TABLE employees(
	emp_no int NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	gender VARCHAR (1) NOT NULL,
	hire_date DATE NOT NULL	
);

CREATE TABLE salaries(
	emp_no int NOT NULL,
	salary int NOT NULL,
	from_date DATE NOT NULL,
	to_date	DATE NOT NULL
);

CREATE TABLE titles(
	emp_no int NOT NULL,
	title VARCHAR (30) NOT NULL,
	from_date DATE NOT NULL,
	to_date	DATE NOT NULL
);