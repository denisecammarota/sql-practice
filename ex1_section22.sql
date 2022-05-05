select d.dept_name, ee.gender, dm.emp_no, dm.from_date, dm.to_date, e.calendar_year,
case
	when e.calendar_year >= year(dm.from_date) and e.calendar_year <= year(dm.to_date) then 
		 1
	else 
		0
end as active_column
from (select distinct year(hire_date) as calendar_year from t_employees) e
cross join 
t_dept_manager dm
join t_employees ee on dm.emp_no = ee.emp_no
join t_departments d on dm.dept_no = d.dept_no
order by dm.emp_no, calendar_year;
