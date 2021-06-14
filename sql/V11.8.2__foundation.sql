alter table if exists foundation_run drop if exists starts_on;
alter table if exists foundation_run drop if exists ends_on;

alter table if exists foundation_run add if not exists starts_on timestamp;
alter table if exists foundation_run add if not exists ends_on timestamp;

alter table if exists foundation_run add if not exists attack_trail varchar(255);
alter table if exists foundation_run add if not exists defense_trail varchar(255);

alter table if exists foundation_run add if not exists channel varchar(255);


alter table if exists foundation_room add if not exists description text;
alter table if exists foundation_room drop constraint if exists foundation_room_dungeon_master_id_fk;
alter table if exists foundation_room drop column if exists master;
alter table if exists foundation_room drop constraint if exists foundation_room_intrusion_control_id_fk;
alter table if exists foundation_room drop column if exists ic;

