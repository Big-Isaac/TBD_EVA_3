delmiter $$
create function calcular_potencia(base int, exponente int)
returns int deterministic
begin
    declare potencia int default 1;
    declare i int default 1;

    miciclo: calcular_potencia
        set potencia = potencia * base;
        set i = i + 1;
        if i > exponente then
            leave miciclo;
        end if;
    end loop miciclo;

    return potencia;
end$$
delimiter ;