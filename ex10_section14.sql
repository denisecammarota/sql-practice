select e.first_name,e.last_name,e.hire_date,t.title,t.from_date,d.dept_name,m.dept_no
from employees e 
join dept_manager_dup m  on e.emp_no = m.emp_no
join departments d on d.dept_no = m.dept_no
join titles t on e.emp_no = t.emp_no
WHERE title = 'Manager';