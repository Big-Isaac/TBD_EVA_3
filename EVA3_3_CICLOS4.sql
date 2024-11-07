delmiter $$
create function calcular_potencia(base int, exponente int)
returns int deterministic
begin
    declare potencia int default 1;
    declare i int default 1;

    repeat
        set potencia = potencia * base;
        set i = i + 1;
    until i > exponente
    end repeat;

    return potencia;
end$$
delimiter ; 