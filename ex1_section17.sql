create or replace view v_average_manager_salary as
select round(avg(s.salary),2)
from salaries s
where s.emp_no in (select emp_no from dept_manager); 