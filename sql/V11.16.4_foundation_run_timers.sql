alter table if exists foundation_run add if not exists state_code int default 0 not null;

alter table if exists foundation_run add if not exists timer_started_on timestamp;
alter table if exists foundation_run add if not exists timer_duration int;
alter table if exists foundation_run add if not exists timer_elapsed int;
alter table if exists foundation_run add if not exists timer_suspended boolean default false not null;
alter table if exists foundation_run add if not exists timer_name varchar(255);

alter table if exists foundation_run drop constraint foundation_run_dungeon_master_id_fk;
alter table if exists foundation_run drop column master;
