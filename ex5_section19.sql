select e.emp_no, e.first_name, e.last_name, 
if(max(de.to_date) >=  DATE_FORMAT(SYSDATE(), '%y-%m-%d'), 'Still Employed','Not Employed') as employment_status
from employees e
join dept_emp de on e.emp_no = de.emp_no
group by emp_no;

