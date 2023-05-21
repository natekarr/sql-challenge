-- TABLE CREATIONS
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY(dept_no)
);
CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY(title_id)
);
CREATE TABLE employees (
	emp_no INT,
	emp_title VARCHAR(30) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date DATE,
	PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(30) NOT NULL,
	PRIMARY KEY(emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
CREATE TABLE dept_manager(
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT,
	PRIMARY KEY(dept_no, emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


--ALL NEEDED SELECT STATEMENTS BELOW
SELECT employees.emp_no, first_name, last_name, sex, salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

SELECT hire_date, first_name, last_name
FROM employees
where date(hire_date) >= '1986-01-01' AND date(hire_date) < '1987-01-01';

SELECT departments.dept_no, dept_name, employees.emp_no, last_name, first_name, title  --first_name, last_name, title
FROM employees
INNER JOIN titles
ON employees.emp_title =  titles.title_id
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE title = 'Manager';

SELECT departments.dept_no, dept_name, employees.emp_no, last_name, first_name  --first_name, last_name, title
FROM employees
INNER JOIN titles
ON employees.emp_title =  titles.title_id
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON dept_emp.dept_no = departments.dept_no

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND SUBSTRING (last_name FROM 1 FOR 1) = 'B';

SELECT dept_name, employees.emp_no, last_name, first_name
FROM employees
INNER JOIN titles
ON employees.emp_title =  titles.title_id
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

SELECT dept_name, employees.emp_no, last_name, first_name
FROM employees
INNER JOIN titles
ON employees.emp_title =  titles.title_id
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

SELECT last_name, 
  COUNT(last_name) as countin
FROM employees
GROUP BY last_name
ORDER BY last_name

--STATEMENTS TO TEST IF DATA STORED PROPERLY
SELECT *
FROM departments;

SELECT *
FROM dept_emp;

SELECT *
FROM dept_manager;

SELECT *
FROM employees;

SELECT *
FROM salaries;

SELECT *
FROM titles;

--DROP TABLE employees CASCADE;
--DROP TABLE departments CASCADE;
--DROP TABLE dept_manager CASCADE;
--DROP TABLE dept_emp CASCADE;
--DROP TABLE salaries CASCADE;
--DROP TABLE titles CASCADE;