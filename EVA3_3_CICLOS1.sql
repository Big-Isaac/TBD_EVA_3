delimiter $$
create function sumatoria_loop(num int)
returns int deterministic
begin
    declare sumatoria int default 0;
    declare i int default 1;

    miciclo: sumatoria_loop
        set sumatoria = sumatoria + i;
        set i = i + 1;
        if i > num then
            leave miciclo;
        end if;
    end loop miciclo;

    return sumatoria;
end $$
delimiter ;