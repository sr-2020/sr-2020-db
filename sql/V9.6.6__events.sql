create table if not exists evt_error
(
    id           serial       not null
        constraint evt_error_pk
            primary key,
    timestamp    timestamp    not null,
    subscription varchar(255) not null,
    phase        varchar(255) not null,
    message      text,
    exception    text
);

alter table evt_error
    owner to backend;

create table if not exists evt_feature_used
(
    id               serial       not null
        constraint evt_feature_used_pk
            primary key,
    timestamp        timestamp    not null,
    content          text         not null,
    action           varchar(255) not null,
    origin_character int
        constraint evt_feature_used_character_id_fk
            references character,
    feature          int          not null
        constraint evt_feature_used_feature_id_fk
            references feature,
    location         int
        constraint evt_feature_used_location_id_fk
            references location,
    target           varchar(255),
    character        int
        constraint evt_feature_used_character_id_fk_2
            references character,
    drone            int
        constraint evt_feature_used_drone_id_fk
            references drone,
    body_storage     varchar(255),
    qr_code          varchar(255),
    locus            varchar(255),
    pill             int
        constraint evt_feature_used_pill_id_fk
            references pill
);

alter table evt_feature_used
    owner to backend;


create table if not exists evt_character_updated
(
    id        serial    not null
        constraint evt_character_updated_pk
            primary key,
    timestamp timestamp not null,
    content   text      not null,
    character integer   not null
        constraint evt_character_updated_character_id_fk
            references character
);

alter table evt_character_updated
    owner to backend;

create table if not exists evt_dumpshock
(
    id        serial    not null
        constraint evt_dumpshock_pk
            primary key,
    timestamp timestamp not null,
    content   text      not null,
    character int       not null
        constraint evt_dumpshock_character_id_fk
            references character
);

alter table evt_dumpshock
    owner to backend;

create table evt_food_consumption
(
    id        serial       not null
        constraint evt_food_consumption_pk
            primary key,
    timestamp timestamp    not null,
    content   text         not null,
    alias     varchar(255) not null,
    deal      varchar(255),
    lifestyle varchar(255),
    character int          not null
        constraint evt_food_consumption_character_id_fk
            references character
);

alter table evt_food_consumption
    owner to backend;

create table if not exists evt_health_state
(
    id        serial       not null
        constraint evt_health_state_pk
            primary key,
    timestamp timestamp    not null,
    content   text         not null,
    stateFrom varchar(255) not null,
    stateTo   varchar(255) not null,
    character int          not null
        constraint evt_health_state_character_id_fk
            references character
);

alter table evt_health_state
    owner to backend;

create table if not exists evt_reanimates
(
    id          serial    not null
        constraint evt_reanimates_pk
            primary key,
    timestamp   timestamp not null,
    content     text      not null,
    ai          varchar(255),
    essence_got int,
    essence_air int,
    medic       int       not null
        constraint evt_reanimates_medic_character_id_fk
            references character,
    character   int       not null
        constraint evt_reanimates_character_id_fk
            references character
);

alter table evt_reanimates
    owner to backend;

create table if not exists evt_implant_install
(
    id         serial       not null
        constraint evt_implant_install_pk
            primary key,
    timestamp  timestamp    not null,
    content    text         not null,
    implant    int          not null
        constraint evt_implant_install_implant_id_fk
            references implant,
    lifestyle  varchar(255) not null,
    autodoc_ls varchar(255),
    character  int          not null
        constraint evt_implant_install_character_id_fk
            references character
);

alter table evt_implant_install
    owner to backend;

create table if not exists evt_pill_consumption
(
    id        serial    not null
        constraint evt_pill_consumption_pk
            primary key,
    timestamp timestamp not null,
    content   text      not null,
    pill      int       not null
        constraint evt_implant_install_implant_id_fk
            references pill,
    lifestyle varchar(255),
    character int       not null
        constraint evt_pill_consumption_character_id_fk
            references character
);

alter table evt_pill_consumption
    owner to backend;
