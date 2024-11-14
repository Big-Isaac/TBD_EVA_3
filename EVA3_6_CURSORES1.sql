delimiter $$
create procedure insertar_prueba(clave int)
begin
    declare exit handler for sqlstate "23000"
    begin
        select "Error: La clave ya existe" as Mensaje;
    end;
    insert into prueba(id) value(clave);
    select "Registro insertado" as Mensaje;
end$$

delimiter ;