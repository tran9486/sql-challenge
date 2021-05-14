create table departments(
	dept_no varchar(10) Primary Key,
	dept_name varchar(30)
);

create table employees(
	emp_no int Primary Key,
	birth_date date,
	first_name varchar(30),
	last_name varchar(30),
	gender varchar(1),
	hire_date date
);

create table salaries(
	emp_no int Primary Key,
	Foreign Key (emp_no) References employees(emp_no),
	salary int,
	from_date date,
	to_date date
);

create table titles(
	emp_no int,
	Foreign Key (emp_no) References employees(emp_no),
	title varchar(30),
	from_date date,
	to_date date,
	Primary Key(emp_no, title, from_date)
);

create table dept_manager(
	dept_no varchar(10),
	Foreign Key (dept_no) References departments(dept_no),
	emp_no int,
	Foreign Key (emp_no) References employees(emp_no),
	from_date date,
	to_date date,
	Primary Key(dept_no, emp_no)
);

create table dept_emp(
	emp_no int,
	Foreign Key (emp_no) References employees(emp_no),
	dept_no varchar(10),
	Foreign Key (dept_no) References departments(dept_no),
	from_date date,
	to_date date,
	Primary Key(emp_no, dept_no)
);

select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;