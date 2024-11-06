delimiter $$
create function conversion_temp(formula int, valor int)
returns varchar(20) deterministic
begin
    declare resu varchar(20);
    case formula
        when 3 then set resu = concat(valor, '°C = ', valor + 273, '°K');
        when 1 then set resu = concat(valor, '°C = ', (valor * 1.8) + 32, '°F');
        when 5 then set resu = concat(valor, '°K = ', valor - 273, '°C');
        else
            set resu = 'Fórmula inválida';
    end case;
    return resu;
end$$
delimiter ;