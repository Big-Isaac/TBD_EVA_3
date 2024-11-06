delimiter $$
create function dia_semana(numero int)
returns varchar(20) deterministic
begin
    declare resu varchar(20);
    case numero
        when 1 then set resu = 'Domingo';
        when 2 then set resu = 'Lunes';
        when 3 then set resu = 'Martes';
        when 4 then set resu = 'Miércoles';
        when 5 then set resu = 'Jueves';
        when 6 then set resu = 'Viernes';
        when 7 then set resu = 'Sábado';
        else
            set resu = 'Número inválido';
    end case;
    return resu;
end$$
delimiter ;