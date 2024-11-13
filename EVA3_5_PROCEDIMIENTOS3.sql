delimiter $$
create procedure consultar_empleado()

begin
    select * from employees;
    where employee_id = id_empleado;
end$$


delimiter ;