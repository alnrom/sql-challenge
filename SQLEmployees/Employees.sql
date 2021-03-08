DROP TABLE IF EXISTS Titles;
CREATE TABLE Titles (
title_id VARCHAR(15) PRIMARY KEY, 
title VARCHAR(30)
);

DROP TABLE IF EXISTS Departments;
CREATE TABLE Departments (
dept_no VARCHAR(10),
dept_name VARCHAR(20), 
PRIMARY KEY (dept_no)
);

DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
emp_no VARCHAR(15) PRIMARY KEY,
emp_title_id VARCHAR(30),
birth_date DATE,
first_name VARCHAR(40),
last_name VARCHAR(40),
sex VARCHAR(1),
hire_date DATE,
FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);


DROP TABLE IF EXISTS Dept_emp;
CREATE TABLE Dept_emp (
emp_no VARCHAR(15),
dept_no VARCHAR(20),
PRIMARY KEY (emp_no, dept_no),
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
--FOREIGN KEY (dept_name) REFERENCES Departments(dept_name)
);

DROP TABLE IF EXISTS Dept_manager;
CREATE TABLE Dept_manager (
dept_no VARCHAR(10),
emp_no VARCHAR(15),
PRIMARY KEY (emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

DROP TABLE IF EXISTS Salaries;
CREATE TABLE Salaries (
emp_no VARCHAR(15) PRIMARY KEY,
salary MONEY,
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);