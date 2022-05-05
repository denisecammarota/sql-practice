drop procedure if exists average_salary_detailed;

delimiter $$

create procedure average_salary_detailed(in min_salary float, in max_salary float)
begin
select d.dept_name, ee.gender, avg(s.salary) as average_salary
from t_salaries s 
join t_employees ee on ee.emp_no = s.emp_no
join t_dept_emp de on ee.emp_no = de.emp_no 
join t_departments d on de.dept_no = d.dept_no
where s.salary between min_salary and max_salary
group by d.dept_no, ee.gender;
end$$

delimiter ;

call average_salary_detailed(50000, 90000);