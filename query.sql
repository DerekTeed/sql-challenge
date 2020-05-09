--1. employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
left join salaries s
on s.emp_no = e.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date
from employees
where hire_date LIKE '%90';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select d.dept_no as "Department Number", d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager dm
left join employees e
on e.emp_no = dm.emp_no
left join departments d
on d.dept_no = dm.dept_no
order by emp_no asc;

--select *
--from dept_manager
--order by emp_no asc;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
--select count(distinct emp_no) as ranVar from  
select e.emp_no as "Employee Number", e.last_name, e.first_name, de.dept_no, d.dept_name
from employees e
join dept_emp de
on e.emp_no = de.emp_no
join departments d
on d.dept_no = de.dept_no;
 
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'
order by first_name asc;

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.first_name, e.last_name, d.dept_name, e.emp_no
from employees e
join dept_emp de
on e.emp_no = de.emp_no
join departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.first_name, e.last_name, d.dept_name, e.emp_no
from employees e
join dept_emp de
on e.emp_no = de.emp_no
join departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select count(last_name) as "Last Names", last_name
from employees
group by last_name
order by "Last Names" desc; 

--show data_directory;