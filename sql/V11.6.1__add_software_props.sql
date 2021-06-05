alter table if exists software
    add if not exists ic_damage_only boolean default false;

alter table if exists software
    add if not exists extra_damage int default 0;

alter table if exists software
    add if not exists extra_defence int default 0;

alter table if exists software
    add if not exists time_to_live int default 0;

alter table if exists software
    add if not exists time_until_done int default 0;
