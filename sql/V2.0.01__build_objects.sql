create table if not exists build
(
    id   serial  not null
        constraint build_pk primary key,
    cost integer not null
);

alter table build
    owner to backend;

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
