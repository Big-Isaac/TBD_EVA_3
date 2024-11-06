delimiter $$
create function comparar_numeros()(val1 int, vla2 int)
returns varchar(30) deterministic
    declare resu varchar(20);
    if val1 > val2 then
        set resu = 'El primer valor es mayor';
    elseif val1 = val2 then
        set resu = 'Los valores son iguales';
    else
        set resu = 'El segundo valor es mayor';
    end if;
    return resu;
begin

end$$
delimiter ;