create table if not exists archetype
(
    id          serial       not null
        constraint archetype_pk primary key,
    name        varchar(255) not null,
    description varchar(1024)
);

alter table archetype
    owner to backend;

create unique index if not exists archetype_name_uindex on archetype (name);

create table if not exists metatype
(
    id          serial       not null
        constraint metatype_pk primary key,
    name        varchar(255) not null,
    description varchar(1024),
    karma       integer      not null
);

alter table metatype
    owner to backend;

create unique index if not exists metatype_name_uindex on metatype (name);

create table if not exists aspect
(
    id          serial       not null
        constraint aspect_pk primary key,
    name        varchar(255) not null,
    description varchar(1024),
    is_primary  boolean,
    archetype   integer
        constraint aspect_archetype_id_fk references archetype
);

alter table aspect
    owner to backend;

create unique index if not exists aspect_name_uindex on aspect (name);

create table if not exists aspect_discount
(
    id       serial      not null
        constraint aspect_discount_pk primary key,
    metatype integer     not null
        constraint aspect_discount_metatype_id_fk references metatype,
    aspect   integer     not null
        constraint aspect_discount_aspect_id_fk references aspect,
    kind     varchar(20) not null
);

alter table aspect_discount
    owner to backend;

create unique index if not exists aspect_discount_metatype_aspect_uindex on aspect_discount (metatype, aspect);

create table if not exists ability_pack
(
    id          serial        not null
        constraint ability_pack_pk primary key,
    name        varchar(255)  not null,
    description varchar(1024) not null,
    cost1       integer       not null,
    cost2       integer       not null,
    cost3       integer       not null,
    aspect      integer       not null
        constraint ability_pack_aspect_id_fk references aspect,
    aspect2     integer
        constraint ability_pack_aspect_id_fk_2 references aspect
);

alter table ability_pack
    owner to backend;

create unique index if not exists ability_pack_name_uindex on ability_pack (name);

create table if not exists archetype_feature
(
    id          serial                not null
        constraint archetype_feature_pk primary key,
    name        varchar(255)          not null,
    description varchar(1024)         not null,
    cost1       integer               not null,
    cost2       integer               not null,
    cost3       integer               not null,
    archetype   integer               not null
        constraint archetype_feature_archetype_id_fk references archetype,
    is_problem  boolean default false not null
);

alter table archetype_feature
    owner to backend;

create unique index if not exists archetype_feature_name_uindex on archetype_feature (name);

create table if not exists character_feature
(
    id          serial                not null
        constraint character_feature_pk primary key,
    name        varchar(255)          not null,
    description varchar(1024)         not null,
    cost1       integer               not null,
    cost2       integer               not null,
    cost3       integer               not null,
    is_problem  boolean default false not null
);

alter table character_feature
    owner to backend;

create unique index if not exists character_feature_name_uindex on character_feature (name);

create table if not exists game_system
(
    id                       serial        not null
        constraint game_system_pk primary key,
    name                     varchar(255),
    existing_aspect_discount integer       not null,
    main_aspect_cost         integer       not null,
    aux_aspect_cost          integer       not null,
    meta_affinity_huge       numeric(5, 2) not null,
    meta_affinity_small      numeric(5, 2) not null
);

alter table game_system
    owner to backend;

create table if not exists gs_aspect_cost
(
    id          serial  not null
        constraint gs_aspect_cost_pk primary key,
    order_num   integer not null,
    karma       integer not null,
    game_system integer not null
        constraint gs_aspect_cost_game_system_id_fk references game_system
);

alter table gs_aspect_cost
    owner to backend;

create unique index if not exists gs_aspect_cost_order_num_uindex on gs_aspect_cost (order_num);

