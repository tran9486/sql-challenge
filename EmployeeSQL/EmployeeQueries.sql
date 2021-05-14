--1.
select employees.emp_no, last_name, first_name, gender as sex, salary
from employees
join salaries
using(emp_no);

--2.
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

--3.
select dept_no, dept_name, emp_no, last_name, first_name
from dept_manager
join departments
using(dept_no)
join employees
using(emp_no);

--4.
select emp_no, last_name, first_name, dept_name
from employees
join dept_emp
using(emp_no)
join departments
using(dept_no);

--5.
select first_name, last_name, gender as sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

--6.
select emp_no, last_name, first_name, dept_name
from employees
join dept_emp
using(emp_no)
join departments
using(dept_no)
where dept_name = 'Sales';

--7.
select emp_no, last_name, first_name, dept_name
from employees
join dept_emp
using(emp_no)
join departments
using(dept_no)
where dept_name = 'Sales' or dept_name = 'Development';

--8.
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc;