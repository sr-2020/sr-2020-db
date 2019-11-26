create sequence host_id_seq as integer;

alter sequence host_id_seq owner to backend;

create sequence foundation_run_id_seq as integer;

alter sequence foundation_run_id_seq owner to backend;

create sequence player_id_seq as integer;

alter sequence player_id_seq owner to backend;

create sequence character_id_seq as integer;

alter sequence character_id_seq owner to backend;

create sequence body_id_seq as integer;

alter sequence body_id_seq owner to backend;

create sequence body_mods_id_seq as integer;

alter sequence body_mods_id_seq owner to backend;

create sequence body_mod_type_id_seq as integer;

alter sequence body_mod_type_id_seq owner to backend;

create sequence sin_id_seq as integer;

alter sequence sin_id_seq owner to backend;

create sequence foundation_node_id_seq as integer;

alter sequence foundation_node_id_seq owner to backend;

create sequence dungeon_master_id_seq as integer;

alter sequence dungeon_master_id_seq owner to backend;

create sequence foundation_run_participant_id_seq as integer;

alter sequence foundation_run_participant_id_seq owner to backend;

create sequence intrusion_control_id_seq as integer;

alter sequence intrusion_control_id_seq owner to backend;

create sequence foundation_room_id_seq as integer;

alter sequence foundation_room_id_seq owner to backend;

create sequence paradigm_id_seq as integer;

alter sequence paradigm_id_seq owner to backend;

create sequence region_id_seq as integer;

alter sequence region_id_seq owner to backend;

create sequence location_id_seq as integer;

alter sequence location_id_seq owner to backend;

create sequence geoposition_id_seq as integer;

alter sequence geoposition_id_seq owner to backend;

create table if not exists player
(
    id     integer default nextval('player_id_seq'::regclass) not null constraint tplayer_pk primary key,
    fio    varchar,
    joinid integer
);

alter table player owner to backend;

create table if not exists character
(
    id           integer default nextval('character_id_seq'::regclass) not null constraint role_pk primary key,
    hacker_login varchar(50),
    hacker_pwd   varchar(50),
    status       varchar(50),
    player       integer                                               not null constraint role__player_fk references player,
    true_race    integer                                               not null
);

alter table character owner to backend;

create table if not exists body
(
    id        integer default nextval('body_id_seq'::regclass) not null constraint body_pk primary key,
    body_type integer,
    max_hp    integer,
    cur_hp    integer,
    character integer constraint body__character_fk references character,
    is_active boolean
);

alter table body owner to backend;

create table if not exists body_mod_type
(
    id            integer default nextval('body_mod_type_id_seq'::regclass) not null constraint bodymodtype_pk primary key,
    name          varchar,
    addition_type varchar,
    addition_val  integer
);

alter table body_mod_type owner to backend;

create table if not exists sin
(
    id          integer default nextval('body_mod_type_id_seq'::regclass) not null constraint sin_pk primary key,
    sin_text    varchar(255)                                              not null,
    person_name varchar(255)                                              not null,
    race        integer                                                   not null,
    citizenship integer                                                   not null,
    role        integer                                                   not null constraint sin_role__fk references character
);

alter table sin owner to backend;

create unique index if not exists sin_sin_text_uindex on sin (sin_text);

create table if not exists body_mods
(
    id            integer default nextval('body_mods_id_seq'::regclass) not null constraint body_mods_pk primary key,
    body          integer constraint body_mods_to_body__fk references body,
    body_mod_type integer constraint body__mods__type__fk references body_mod_type
);

alter table body_mods owner to backend;

create unique index if not exists body_mods_id_uindex on body_mods (id);

create table if not exists dungeon_master
(
    id       integer default nextval('dungeon_master_id_seq'::regclass) not null constraint dungeonmaster_pk primary key,
    name     varchar(200),
    login    varchar(50),
    password varchar(50)
);

alter table dungeon_master owner to backend;

create table if not exists intrusion_control
(
    id   integer default nextval('intrusion_control_id_seq'::regclass) not null constraint intrusioncontrol_pk primary key,
    name varchar(200)
);

alter table intrusion_control owner to backend;

create table if not exists foundation_room
(
    id     integer default nextval('foundation_room_id_seq'::regclass) not null constraint foundationroom_pk primary key,
    name   varchar(255),
    master integer constraint foundationroom_dungeonmaster_id_fk references dungeon_master,
    ic     integer constraint foundationroom_intrusioncontrol_id_fk references intrusion_control
);

alter table foundation_room owner to backend;

create table if not exists flyway_schema_history
(
    installed_rank integer                 not null constraint flyway_schema_history_pk primary key,
    version        varchar(50),
    description    varchar(200)            not null,
    type           varchar(20)             not null,
    script         varchar(1000)           not null,
    checksum       integer,
    installed_by   varchar(100)            not null,
    installed_on   timestamp default now() not null,
    execution_time integer                 not null,
    success        boolean                 not null
);

alter table flyway_schema_history owner to backend;

create index if not exists flyway_schema_history_s_idx on flyway_schema_history (success);

create table if not exists paradigm
(
    id          integer default nextval('paradigm_id_seq'::regclass) not null constraint paradigm_pk primary key,
    name        varchar(200),
    description varchar
);

alter table paradigm owner to backend;

create table if not exists host
(
    id          integer default nextval('host_id_seq'::regclass) not null constraint host_pk primary key,
    address     varchar(100),
    description varchar(255),
    character   integer constraint host_character_id_fk references character,
    paradigm    integer constraint host_paradigm_id_fk references paradigm
);

alter table host owner to backend;

create table if not exists foundation_node
(
    id          integer default nextval('foundation_node_id_seq'::regclass) not null constraint foundation_node_pk primary key,
    room        integer,
    host        integer constraint hostfoundation_node_host_id_fk references host on delete cascade,
    order_index integer
);

alter table foundation_node owner to backend;

create table if not exists foundation_run
(
    id        integer default nextval('foundation_run_id_seq'::regclass) not null constraint foundationrun_pk primary key,
    starts_on time,
    ends_on   time,
    state     varchar(20),
    role      varchar(20),
    host      integer constraint foundationrun_host_id_fk references host,
    master    integer constraint foundationrun_dungeonmaster_id_fk references dungeon_master
);

alter table foundation_run owner to backend;

create table if not exists foundation_run_participant
(
    id        integer default nextval('foundation_run_participant_id_seq'::regclass) not null constraint "foundationRunParticipant_pk" primary key,
    character integer constraint "foundationRunParticipant_character_id_fk" references character,
    run       integer constraint "foundationRunParticipant_foundationRun_id_fk" references foundation_run
);

alter table foundation_run_participant owner to backend;

create table if not exists region
(
    id   integer default nextval('region_id_seq'::regclass) not null constraint region_pk primary key,
    name varchar(255)
);

alter table region owner to backend;

create table if not exists location
(
    id   integer default nextval('location_id_seq'::regclass) not null constraint location_pk primary key,
    name varchar(255)
);

alter table location owner to backend;

create table if not exists geoposition
(
    id          integer default nextval('geoposition_id_seq'::regclass) not null constraint geoposition_pk primary key,
    sin         varchar(200)                                            not null constraint geoposition_sin_sin_text_fk references sin (sin_text),
    since       timestamp,
    till        timestamp,
    body_id     integer                                                 not null constraint geoposition_body_id_fk references body,
    location_id integer                                                 not null constraint geoposition_location_id_fk references location
);

alter table geoposition owner to backend;

