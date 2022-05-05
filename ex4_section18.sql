set @v_emp_no = 0;
call employees.employee_number('Aruna', 'Journel', @v_emp_no);
select @v_emp_no;
