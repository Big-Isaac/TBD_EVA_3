delmiter $$
create function calcular_potencia(base int, exponente int)
returns int deterministic
begin
    declare potencia int default 1;
    declare i int default 1;

    while i <= exponente do
        set potencia = potencia * base;
        set i = i + 1;
    end while;

    return potencia;
end$$
delimiter ;