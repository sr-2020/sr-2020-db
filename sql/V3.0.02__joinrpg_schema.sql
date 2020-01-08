create table if not exists join_character
(
    id           serial       not null
        constraint join_character_pk primary key,
    join_id      integer      not null,
    active       boolean      not null,
    in_game      boolean      not null,
    name         varchar(255) not null,
    description  varchar(1024),
    last_updated timestamp    not null,
    character    integer      not null
        constraint join_character_character_id_fk references character
);

alter table join_character
    owner to backend;

create unique index if not exists join_character_character_uindex on join_character (character);

create unique index if not exists join_character_join_id_uindex on join_character (join_id);

alter table join_character
    owner to backend;

-- join group
create table if not exists join_group
(
    id      serial        not null
        constraint join_group_pk primary key,
    name    varchar(1024) not null,
    join_id integer       not null
);

alter table join_group
    owner to backend;

create unique index if not exists join_group_join_id_uindex on join_group (join_id);

--join field
create table if not exists join_field
(
    id         serial        not null
        constraint join_field_pk primary key,
    join_id    integer       not null,
    name       varchar(1024) not null,
    field_type varchar(255)  not null
);

alter table join_field
    owner to backend;

create unique index if not exists join_field_join_id_uindex on join_field (join_id);

--join field value
create table if not exists join_field_value
(
    id             serial  not null
        constraint join_field_value_pk primary key,
    value          text,
    join_character integer not null
        constraint join_field_value_join_character_id_fk references join_character,
    join_field     integer not null
        constraint join_field_value_join_field_id_fk references join_field
);

alter table join_field_value
    owner to backend;

create unique index if not exists join_field_value_join_character_join_field_uindex on join_field_value (join_character, join_field);

create table if not exists join_group_link
(
    id             serial  not null
        constraint join_group_link_pk primary key,
    join_character integer not null
        constraint join_group_link_join_character_id_fk references join_character,
    join_group     integer not null
        constraint join_group_link_join_group_id_fk references join_group
);

alter table join_group_link
    owner to backend;

create unique index if not exists join_group_link_join_character_join_field_uindex on join_group_link (join_character, join_group);

-- last import
create table if not exists join_last_import
(
    id          serial    not null
        constraint join_last_import_pk primary key,
    last_import timestamp not null
);

alter table join_last_import
    owner to backend;

INSERT INTO join_last_import (id, last_import)
VALUES (1, '2016-01-01 09:27:46.000000');
