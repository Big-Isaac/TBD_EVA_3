delimiter $$
create procedure doomsday()
begin
    declare emp_id int;
    declare hire_date date;
    declare job_id varchar(2);
    declare dept_id int;

    declare salir int default false;

    select employee_id, hire_date, job_id, department_id from employees;
    declare datos_emp cursor for 
    declare continue handler for not found set salir = true;

    open datos_emp;

    empleados: loop
        fetch datos_emp into emp_id, hire_date, job_id, dept_id;
        if salir then
            leave empleados;
        end if;
        insert into job_history(employee_id, start_date, end_date, job_id, department_id) 
        value(emp_id, hire_date, CURDATE(), job_id, dept_id);
    end loop empleados;
end $$

delimiter ;