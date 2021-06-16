alter table if exists foundation_node add constraint foundation_node_foundation_room_id_fk foreign key (room) references foundation_room;

alter table if exists foundation_run drop column if exists role;
alter table if exists foundation_run rename column ends_on to registration_expires_on;

alter table if exists foundation_run_participant alter column character set not null;
alter table if exists foundation_run_participant alter column run set not null;
alter table if exists foundation_run_participant add if not exists role varchar(255);

create table technomancer
(
    id serial not null constraint technomancer_pk primary key,
    active_run int constraint technomancer_foundation_run_id_fk references foundation_run
);

alter table technomancer owner to backend;

create table sprite
(
    id serial not null constraint sprite_pk primary key,
    alias varchar(255) not null,
    name varchar(1024)
);

create unique index sprite_alias_uindex on sprite (alias);
alter table sprite owner to backend;

create table if not exists foundation_run_sprite
(
    id      serial not null constraint foundation_run_sprite_pk primary key,
    used    boolean not null,
    sprite  int not null constraint foundation_run_sprite_sprite_id_fk references sprite,
    run     int not null constraint foundation_run_sprite_foundation_run_id_fk references foundation_run
);

alter table if exists foundation_run_sprite owner to backend;
