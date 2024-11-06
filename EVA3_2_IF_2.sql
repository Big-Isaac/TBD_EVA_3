delimiter $$
create function es_par()(numero int)
returns varchar(20) deterministic
begin
    declare residuo int;
    declare resu varchar(20);
    set residuo = mod(numero, 2);
    if residuo = 0 then
        return 'El número es par';
    else
        return 'El número es impar';
    end if;
    return resu;
end$$
delimiter ;