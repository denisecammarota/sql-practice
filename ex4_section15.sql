insert into emp_manager(
	select u.*
    from(
		select a.*
        from(
			select e.emp_no as employee_ID, min(de.dept_no) as department_code, 
				(select emp_no
				from dept_manager 
				where emp_no = 110022) as manager_ID
            from employees e
            join dept_emp de on e.emp_no = de.emp_no
            where e.emp_no <= 10020
            group by e.emp_no
            order by e.emp_no
            ) as a 
	UNION
    select b.* 
	from(
		select e.emp_no as employee_ID, min(de.dept_no) as department_code, 
				(select emp_no
				from dept_manager 
				where emp_no = 110039) as manager_ID
            from employees e
            join dept_emp de on e.emp_no = de.emp_no
            where e.emp_no > 10020
            group by e.emp_no
            order by e.emp_no
            limit 20
            ) as b
	UNION
    select c.*
    from(
		select e.emp_no as employee_ID, min(de.dept_no) as department_code, 
				(select emp_no
				from dept_manager 
				where emp_no = 110039) as manager_ID
            from employees e
            join dept_emp de on e.emp_no = de.emp_no
            where e.emp_no = 110022
            group by e.emp_no
            order by e.emp_no
    ) as c
    UNION
    select d.*
    from(
		select e.emp_no as employee_ID, min(de.dept_no) as department_code, 
				(select emp_no
				from dept_manager 
				where emp_no = 110022) as manager_ID
            from employees e
            join dept_emp de on e.emp_no = de.emp_no
            where e.emp_no = 110039
            group by e.emp_no
            order by e.emp_no
    ) as d
            ) as u
            );

