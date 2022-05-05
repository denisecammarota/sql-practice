select *
from departments
order by dept_no;

commit;

update departments_dup
SET
dept_no = 'd011',
dept_name = 'Quality Control';

rollback;

commit;

update departments
set 
dept_name = 'Data Analysis'
where dept_no = 'd010';

commit;
rollback;