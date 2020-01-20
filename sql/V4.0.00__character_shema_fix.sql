alter table if exists character
    add max_build_aspects int default 2 not null;

alter table if exists character
    add if not exists max_build_archetypes int default 2 not null;

alter table if exists character
    add if not exists max_karma int default 310 not null;

alter table if exists character
    alter column max_build_aspects drop default;

alter table if exists character
    alter column max_build_archetypes drop default;

alter table if exists character
    alter column max_karma drop default;


alter table if exists character
    add build int;

alter table character
    add constraint character_build_id_fk
        foreign key (build) references build
            on delete cascade;


alter table if exists game_system
    add if not exists def_max_archetypes int default 2 not null;

alter table if exists game_system
    add if not exists def_max_aspects int default 2 not null;

alter table if exists game_system
    add if not exists def_limit_karma int default 310 not null;

alter table if exists game_system
    alter column def_max_archetypes drop default;

alter table if exists game_system
    alter column def_max_aspects drop default;

alter table if exists game_system
    alter column def_limit_karma drop default;


alter table build
    add if not exists archetypes_count int default 0 not null;

alter table build
    add if not exists aspects_count int default 0 not null;

alter table build
    add if not exists disadvantages_total int default 0 not null;

alter table build
    add if not exists cf_features_count int default 0 not null;

alter table build
    add if not exists at_features_count int default 0 not null;

alter table build
    add if not exists ap_count int default 0 not null;

alter table build
    alter column archetypes_count drop default;

alter table build
    alter column aspects_count drop default;

alter table build
    alter column disadvantages_total drop default;

alter table build
    alter column cf_features_count drop default;

alter table build
    alter column at_features_count drop default;

alter table build
    alter column ap_count drop default;

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
