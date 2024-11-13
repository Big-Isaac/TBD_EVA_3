delimiter $$

create function generar_correo(nombre varchar(40), apellido varchar(40), dominio varchar(40))
returns varchar(100) deterministic

begin
	declare inicial varchar(1) default substring(nombre, 1,1);
    declare correo varchar(100);
    
    set correo = concat(inicial, '.',apellido,'@',dominio,'.com');
	return correo;
    
end$$
delimiter ;