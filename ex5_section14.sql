select e.emp_no,e.first_name,e.last_name, m.dept_no, m.from_date
from employees e
left join dept_manager_dup m 
on e.emp_no = m.emp_no
where e.last_name = 'Markovitch'
order by emp_no desc, dept_no;