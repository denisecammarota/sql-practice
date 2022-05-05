select dm.*, d.*
from dept_manager_dup dm
cross join
departments d
where d.dept_no = 'd009'
order by emp_no;

select *
from dept_manager_dup;