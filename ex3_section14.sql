SELECT *
FROM dept_manager_dup
ORDER BY dept_no;


SELECT *
FROM departments_dup
ORDER BY dept_no;

select m.dept_no, m.emp_no, d.dept_name
from dept_manager_dup m
inner join departments_dup d
on m.dept_no = d.dept_no
order by dept_no;