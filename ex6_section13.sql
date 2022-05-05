select dept_no,dept_name,coalesce(dept_no,dept_name) as dept_info
from departments_dup
order by dept_no;