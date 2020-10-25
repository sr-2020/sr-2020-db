create table if not exists feature
(
    id                serial
        constraint feature_pk
            primary key,
    alias             varchar(255) not null,
    name              varchar(1024),
    description       text,
    prerequisites     text,
    karma             int,
    level             int,
    ability_pack      int
        constraint feature_ability_pack_id_fk
            references ability_pack,
    archetype_feature int
        constraint feature_archetype_feature_id_fk
            references archetype_feature
);

create unique index if not exists feature_alias_uindex
    on feature (alias);

create table if not exists implant
(
    id          serial
        constraint implant_pk
            primary key,
    alias       varchar(255) not null,
    name        varchar(1024),
    description text
);

create unique index if not exists implant_alias_uindex
    on implant (alias);

create table if not exists pill
(
    id          serial
        constraint pill_pk
            primary key,
    alias       varchar(255) not null,
    name        varchar(1024),
    description text
);

create unique index if not exists pill_alias_uindex
    on pill (alias);


create table if not exists drone
(
    id          serial
        constraint drone_pk
            primary key,
    alias       varchar(255) not null,
    name        varchar(1024),
    description text
);

create unique index if not exists drone_alias_uindex
    on drone (alias);

create table if not exists reagent
(
    id          serial
        constraint reagent_pk
            primary key,
    alias       varchar(255) not null,
    name        varchar(1024),
    description text
);

create unique index if not exists reagent_alias_uindex
    on reagent (alias);


alter table location
    add if not exists ext_id int;


alter table join_character
    alter column description type text using description::text;

