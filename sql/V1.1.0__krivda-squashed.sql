create table if not exists player
(
    id         serial not null
        constraint tplayer_pk primary key,
    fio        varchar(255),
    joinid     integer,
    join_name  varchar(255),
    join_email varchar(255)
);

alter table player
    owner to backend;

create table if not exists build
(
    id                  serial  not null
        constraint build_pk primary key,
    cost                integer not null,
    archetypes_count    integer not null,
    aspects_count       integer not null,
    disadvantages_total integer not null,
    cf_features_count   integer not null,
    at_features_count   integer not null,
    ap_count            integer not null
);

alter table build
    owner to backend;

create table if not exists character
(
    id                   serial  not null
        constraint character_pk primary key,
    hacker_login         varchar(50),
    hacker_pwd           varchar(50),
    status               varchar(50),
    player               integer not null
        constraint character_player_id_fk references player on delete cascade,
    true_race            integer not null,
    max_build_aspects    integer not null,
    max_build_archetypes integer not null,
    max_karma            integer not null,
    build                integer
        constraint character_build_id_fk references build on delete cascade,
    model_id             integer
);

alter table character
    owner to backend;

create unique index if not exists character_model_id_uindex on character (model_id);

create table if not exists body
(
    id        serial not null
        constraint body_pk primary key,
    body_type integer,
    max_hp    integer,
    cur_hp    integer,
    character integer
        constraint body__character_fk references character,
    is_active boolean
);

alter table body
    owner to backend;

create table if not exists body_mod_type
(
    id            serial not null
        constraint bodymodtype_pk primary key,
    name          varchar,
    addition_type varchar,
    addition_val  integer
);

alter table body_mod_type
    owner to backend;

create table if not exists sin
(
    id          serial       not null
        constraint sin_pk primary key,
    sin_text    varchar(255) not null
        constraint uk_rbsiv90dyf0wibv0nja5q07t5 unique,
    person_name varchar(255) not null,
    race        integer      not null,
    citizenship integer      not null,
    character   integer
        constraint sin_character_id_fk references character
);

alter table sin
    owner to backend;

create unique index if not exists sin_sin_text_uindex on sin (sin_text);

create table if not exists body_mods
(
    id            serial not null
        constraint body_mods_pk primary key,
    body          integer
        constraint body_mods_to_body__fk references body,
    body_mod_type integer
        constraint body__mods__type__fk references body_mod_type
);

alter table body_mods
    owner to backend;

create unique index if not exists body_mods_id_uindex on body_mods (id);

create table if not exists dungeon_master
(
    id       serial not null
        constraint dungeon_master_pk primary key,
    name     varchar(200),
    login    varchar(50),
    password varchar(50)
);

alter table dungeon_master
    owner to backend;

create table if not exists intrusion_control
(
    id   serial not null
        constraint intrusion_control_pk primary key,
    name varchar(200)
);

alter table intrusion_control
    owner to backend;

create table if not exists foundation_room
(
    id     serial not null
        constraint foundation_room_pk primary key,
    name   varchar(255),
    master integer
        constraint foundation_room_dungeon_master_id_fk references dungeon_master,
    ic     integer
        constraint foundation_room_intrusion_control_id_fk references intrusion_control
);

alter table foundation_room
    owner to backend;

create table if not exists paradigm
(
    id          serial not null
        constraint paradigm_pk primary key,
    name        varchar(200),
    description varchar
);

alter table paradigm
    owner to backend;

create table if not exists host
(
    id          serial not null
        constraint host_pk primary key,
    address     varchar(100),
    description varchar(255),
    character   integer
        constraint host_character_id_fk references character,
    paradigm    integer
        constraint host_paradigm_id_fk references paradigm
);

alter table host
    owner to backend;

create table if not exists foundation_node
(
    id          serial not null
        constraint foundation_node_pk primary key,
    room        integer,
    host        integer
        constraint host_foundation_node_host_id_fk references host on delete cascade,
    order_index integer
);

alter table foundation_node
    owner to backend;

create table if not exists foundation_run
(
    id        serial not null
        constraint foundation_run_pk primary key,
    starts_on time,
    ends_on   time,
    state     varchar(20),
    role      varchar(20),
    host      integer
        constraint foundation_run_host_id_fk references host,
    master    integer
        constraint foundation_run_dungeon_master_id_fk references dungeon_master
);

alter table foundation_run
    owner to backend;

create table if not exists foundation_run_participant
(
    id        serial not null
        constraint foundation_run_participant_pk primary key,
    character integer
        constraint foundation_run_participant_character_id_fk references character,
    run       integer
        constraint foundation_run_participant_foundationrun_id_fk references foundation_run
);

alter table foundation_run_participant
    owner to backend;

create table if not exists region
(
    id   serial not null
        constraint region_pk primary key,
    name varchar(255)
);

alter table region
    owner to backend;

create table if not exists location
(
    id   serial not null
        constraint location_pk primary key,
    name varchar(255)
);

alter table location
    owner to backend;

create table if not exists geoposition
(
    id          serial  not null
        constraint geoposition_pk primary key,
    since       timestamp,
    till        timestamp,
    body_id     integer not null
        constraint geoposition_body_id_fk references body,
    location_id integer not null
        constraint geoposition_location_id_fk references location,
    sin         integer not null
        constraint geoposition_sin_id_fk references sin
);

alter table geoposition
    owner to backend;

create table if not exists authority
(
    name varchar(255) not null
        constraint authority_pkey primary key
);

alter table authority
    owner to backend;

create table if not exists user_login
(
    id            serial                not null
        constraint user_login_pkey primary key,
    password_hash varchar(255),
    login         varchar(50)           not null
        constraint user_login_login_uindex unique,
    player        integer
        constraint user_login_player_id_fk references player on delete cascade,
    name          varchar(50),
    locked        boolean default false not null
);

alter table user_login
    owner to backend;

create table if not exists user_authority
(
    id         serial       not null
        constraint user_authority_pk primary key,
    user_login integer      not null
        constraint user_authority_user_login_id_fk references user_login on delete cascade,
    authority  varchar(255) not null
        constraint user_authority_authority_name_fk references authority
);

alter table user_authority
    owner to backend;

create unique index if not exists user_authority_user_login_authority_uindex on user_authority (user_login, authority);

create table if not exists archetype
(
    id          serial                not null
        constraint archetype_pk primary key,
    name        varchar(255)          not null,
    description varchar(1024),
    hidden      boolean default false not null
);

alter table archetype
    owner to backend;

create unique index if not exists archetype_name_uindex on archetype (name);

create table if not exists metatype
(
    id          serial                not null
        constraint metatype_pk primary key,
    name        varchar(255)          not null,
    description varchar(1024),
    cost        integer               not null,
    hidden      boolean default false not null
);

alter table metatype
    owner to backend;

create unique index if not exists metatype_name_uindex on metatype (name);

create table if not exists aspect
(
    id          serial                not null
        constraint aspect_pk primary key,
    name        varchar(255)          not null,
    description varchar(1024),
    is_primary  boolean,
    archetype   integer
        constraint aspect_archetype_id_fk references archetype,
    hidden      boolean default false not null
);

alter table aspect
    owner to backend;

create unique index if not exists aspect_name_uindex on aspect (name);

create table if not exists aspect_discount
(
    id       serial                not null
        constraint aspect_discount_pk primary key,
    metatype integer               not null
        constraint aspect_discount_metatype_id_fk references metatype,
    aspect   integer               not null
        constraint aspect_discount_aspect_id_fk references aspect,
    kind     varchar(20)           not null
);

alter table aspect_discount
    owner to backend;

create unique index if not exists aspect_discount_metatype_aspect_uindex on aspect_discount (metatype, aspect);

create table if not exists ability_pack
(
    id          serial                not null
        constraint ability_pack_pk primary key,
    name        varchar(255)          not null,
    description varchar(1024)         not null,
    cost1       integer               not null,
    cost2       integer               not null,
    cost3       integer               not null,
    aspect      integer               not null
        constraint ability_pack_aspect_id_fk references aspect,
    aspect2     integer
        constraint ability_pack_aspect_id_fk_2 references aspect,
    hidden      boolean default false not null
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
    is_problem  boolean default false not null,
    hidden      boolean default false not null
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
    is_problem  boolean default false not null,
    hidden      boolean default false not null
);

alter table character_feature
    owner to backend;

create unique index if not exists character_feature_name_uindex on character_feature (name);

create table if not exists game_system
(
    id                  serial                not null
        constraint game_system_pk primary key,
    name                varchar(255),
    aspect_cost         integer               not null,
    aux_aspect_cost     integer               not null,
    meta_affinity_huge  numeric(5, 2)         not null,
    meta_affinity_small numeric(5, 2)         not null,
    archetype_cost      integer               not null,
    max_disadvantage    integer               not null,
    max_transfer        integer               not null,
    main_aspect_cost    integer,
    def_max_archetypes  integer               not null,
    def_max_aspects     integer               not null,
    def_limit_karma     integer               not null
);

alter table game_system
    owner to backend;

create unique index if not exists game_system_name_uindex on game_system (name);

create table if not exists build_m
(
    id       serial  not null
        constraint build_m_pk primary key,
    locked   boolean not null,
    metatype integer not null
        constraint build_m_metatype_id_fk references metatype,
    build    integer not null
        constraint build_m_build_id_fk references build on delete cascade
);

alter table build_m
    owner to backend;

create index if not exists build_m_build_metatype_index on build_m (build, metatype);

create table if not exists build_cf
(
    id                serial  not null
        constraint build_cf_pk primary key,
    lvl               integer not null,
    locklvl           integer not null,
    character_feature integer not null
        constraint build_cf_character_feature_id_fk references character_feature,
    build             integer not null
        constraint build_cf_build_id_fk references build on delete cascade
);

alter table build_cf
    owner to backend;

create unique index if not exists build_cf_build_character_feature_uindex on build_cf (build, character_feature);

create table if not exists build_at
(
    id        serial                not null
        constraint build_at_pk primary key,
    locked    boolean default false not null,
    archetype integer               not null
        constraint build_at_archetype_id_fk references archetype,
    build     integer               not null
        constraint build_at_build_id_fk references build on delete cascade
);

alter table build_at
    owner to backend;

create unique index if not exists build_at_build_archetype_uindex on build_at (build, archetype);

create table if not exists build_at_f
(
    id                serial  not null
        constraint build_at_f_pk primary key,
    lvl               integer not null,
    locklvl           integer not null,
    archetype_feature integer not null
        constraint build_at_f_archetype_feature_id_fk references archetype_feature,
    build_at          integer not null
        constraint build_at_f_build_at_id_fk references build_at on delete cascade
);

comment on table build_at_f is 'build archetype feature';

alter table build_at_f
    owner to backend;

create unique index if not exists build_at_f_build_at_archetype_feature_uindex on build_at_f (build_at, archetype_feature);

create table if not exists build_as
(
    id       serial                not null
        constraint build_as_pk primary key,
    locked   boolean default false not null,
    aspect   integer               not null
        constraint build_as_aspect_id_fk references aspect,
    build_at integer               not null
        constraint build_as_build_at_id_fk references build_at on delete cascade
);

comment on table build_as is 'build aspect';

alter table build_as
    owner to backend;

create unique index if not exists build_as_build_at_aspect_uindex on build_as (build_at, aspect);

create table if not exists build_as_ap
(
    id           serial  not null
        constraint build_as_ap_pk primary key,
    lvl          integer not null,
    locklvl      integer not null,
    ability_pack integer not null
        constraint build_as_ap_ability_pack_id_fk references ability_pack,
    build_as     integer not null
        constraint build_as_ap_build_as_id_fk references build_as on delete cascade
);

comment on table build_as_ap is 'build ability pack';

alter table build_as_ap
    owner to backend;

create unique index if not exists build_as_ap_build_as_ability_pack_uindex on build_as_ap (build_as, ability_pack);

create table if not exists pregen
(
    id             serial       not null
        constraint pregen_pk primary key,
    name           varchar(255) not null,
    creator        varchar(255) not null,
    build          integer      not null
        constraint pregen_build_id_fk references build on delete cascade,
    max_karma      integer      not null,
    max_archetypes integer      not null,
    max_aspects    integer      not null
);

alter table pregen
    owner to backend;

create unique index if not exists pregen_name_uindex on pregen (name);

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
        constraint join_character_character_id_fk references character on delete cascade
);

alter table join_character
    owner to backend;

create unique index if not exists join_character_character_uindex on join_character (character);

create unique index if not exists join_character_join_id_uindex on join_character (join_id);

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

create table if not exists join_field_value
(
    id             serial  not null
        constraint join_field_value_pk primary key,
    value          text,
    join_character integer not null
        constraint join_field_value_join_character_id_fk references join_character on delete cascade,
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
        constraint join_group_link_join_character_id_fk references join_character on delete cascade,
    join_group     integer not null
        constraint join_group_link_join_group_id_fk references join_group
);

alter table join_group_link
    owner to backend;

create unique index if not exists join_group_link_join_character_join_field_uindex on join_group_link (join_character, join_group);

create table if not exists join_last_import
(
    id          serial    not null
        constraint join_last_import_pk primary key,
    last_import timestamp not null
);

alter table join_last_import
    owner to backend;

create unique index if not exists join_last_import_id_uindex on join_last_import (id);

create table if not exists build_problem
(
    id          serial        not null
        constraint build_problem_pk primary key,
    name        varchar(1024) not null,
    description varchar(1024) not null,
    value       integer,
    build       integer       not null
        constraint build_problem_build_id_fk references build on delete cascade
);

alter table build_problem
    owner to backend;

create table if not exists karma_bonus
(
    id           serial       not null
        constraint karma_bonus_pk primary key,
    amount       integer      not null,
    kind         varchar(255) not null,
    details      varchar(1024),
    requested_by varchar(255) not null,
    approved_by  varchar(255),
    approved_on  date,
    character    integer      not null
        constraint karma_bonus_character_id_fk references character
);

alter table karma_bonus
    owner to backend;

