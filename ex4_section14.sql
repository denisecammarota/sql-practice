select m.emp_no,e.first_name,e.last_name, m.dept_no, e.hire_date
from dept_manager_dup m
inner join employees e
on m.emp_no = e.emp_no
order by emp_no;