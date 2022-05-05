select *
from employees e
where exists(select * from titles t where e.emp_no = t.emp_no  and title = 'Assistant Engineer'); 

