select e.emp_no,e.first_name,e.last_name, m.emp_no, m.from_date
from employees e, dept_manager_dup m 
where e.emp_no = m.emp_no;

set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '');