create table if not exists player
(
    id     serial not null
        constraint tplayer_pk primary key,
    fio    varchar(255),
    joinid integer
);

alter table player owner to backend;

create table if not exists character
(
    id           serial not null
        constraint character_pk primary key,
    hacker_login varchar(50),
    hacker_pwd   varchar(50),
    status       varchar(50),
    player       integer                                               not null
        constraint character_player_id_fk references player,
    true_race    integer                                               not null
);

alter table character owner to backend;

create table if not exists body
(
    id serial not null
        constraint body_pk primary key,
    body_type integer,
    max_hp    integer,
    cur_hp    integer,
    character integer
        constraint body__character_fk references character (id),
    is_active boolean
);

alter table body owner to backend;

create table if not exists body_mod_type
(
    id serial not null
        constraint bodymodtype_pk primary key,
    name          varchar,
    addition_type varchar,
    addition_val  integer
);

alter table body_mod_type owner to backend;

create table if not exists sin
(
    id serial not null
        constraint sin_pk primary key,
    sin_text    varchar(255)                                    not null
        constraint uk_rbsiv90dyf0wibv0nja5q07t5 unique,
    person_name varchar(255)                                    not null,
    race        integer                                         not null,
    citizenship integer                                         not null,
    character   integer
        constraint sin_character_id_fk references character
);

alter table sin owner to backend;

create unique index if not exists sin_sin_text_uindex on sin (sin_text);

create table if not exists body_mods
(
    id serial not null
        constraint body_mods_pk primary key,
    body          integer
        constraint body_mods_to_body__fk references body,
    body_mod_type integer
        constraint body__mods__type__fk references body_mod_type
);

alter table body_mods owner to backend;

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
    id serial not null
        constraint paradigm_pk primary key,
    name        varchar(200),
    description varchar
);

alter table paradigm
    owner to backend;

create table if not exists host
(
    id serial not null
        constraint host_pk primary key,
    address     varchar(100),
    description varchar(255),
    character   integer
        constraint host_character_id_fk references character (id),
    paradigm    integer
        constraint host_paradigm_id_fk references paradigm
);

alter table host owner to backend;

create table if not exists foundation_node
(
    id          serial not null
        constraint foundation_node_pk primary key,
    room        integer,
    host        integer
        constraint host_foundation_node_host_id_fk references host on delete cascade,
    order_index integer
);

alter table foundation_node owner to backend;

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

alter table foundation_run owner to backend;

create table if not exists foundation_run_participant
(
    id        serial not null
        constraint foundation_run_participant_pk primary key,
    character integer
        constraint foundation_run_participant_character_id_fk references character (id),
    run       integer
        constraint foundation_run_participant_foundationRun_id_fk references foundation_run
);

alter table foundation_run_participant owner to backend;

create table if not exists region
(
    id serial not null
        constraint region_pk primary key,
    name varchar(255)
);

alter table region
    owner to backend;

create table if not exists location
(
    id serial not null
        constraint location_pk primary key,
    name varchar(255)
);

alter table location
    owner to backend;

create table if not exists geoposition
(
    id serial not null
        constraint geoposition_pk primary key,
    since       timestamp,
    till        timestamp,
    body_id     integer                                                 not null
        constraint geoposition_body_id_fk references body,
    location_id integer                                                 not null
        constraint geoposition_location_id_fk references location,
    sin         integer                                                 not null
        constraint geoposition_sin_id_fk references sin
);

alter table geoposition
    owner to backend;

create table if not exists authority
(
    name varchar(255) not null
        constraint authority_pkey primary key
);

alter table authority owner to backend;

create table if not exists user_login
(
    id serial not null
        constraint user_login_pkey primary key,
    password_hash varchar(255) not null,
    user_name     varchar(50)  not null
        constraint user_login_login_uindex unique,
    player        integer
);

alter table user_login
    owner to backend;

create table if not exists user_authority
(
    id serial not null
        constraint user_authority_pk primary key,
    user_login integer                                                    not null
        constraint user_authority_user_login_id_fk references user_login,
    authority  varchar(255)                                               not null
        constraint user_authority_authority_name_fk references authority,
    name       varchar(255)
);

alter table user_authority
    owner to backend;

create unique index if not exists user_authority_user_login_authority_uindex on user_authority (user_login, authority);

