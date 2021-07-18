drop table if exists idea cascade;
create table if not exists idea
  (
    id                      serial       not null constraint idea_pk primary key,

    alias                   varchar(255),
    kind                    varchar(255),
    prerequisite            varchar(1024),
    researched              bool         not null default false,
    researched_times        int default 0 not null,
    started_times           int default 0 not null,
    cycle                   int          not null default 0,
    repeatable              boolean      not null default false,
    requirement_name        varchar(255),
    requirement_description text,
    requirement_trail       varchar(255) not null,
    spec_name               varchar(255),
    spec_description        text,
    spec_trail              varchar(255),
    conv_positive           int,
    conv_ess                int,
    conv_resonance          int,
    conv_extra              text,
    res_neuro               int,
    res_arena_1             varchar(255),
    res_arena_2             varchar(255),
    res_arena_3             varchar(255),
    res_arena_4             varchar(255),
    res_ritual              text,
    good_kind               varchar(255),
    qr_number               int,
    certificate             text,
    master_action           text,
    comment                 text
  );
alter table idea owner to backend;

create unique index if not exists idea_alias_uindex on idea (alias);
create unique index if not exists idea_requirement_trail_uindex on idea (requirement_trail);

drop table project cascade;
drop table project cascade;
create table if not exists project
  (
    id   serial not null constraint project_pk primary key,
    state varchar(255),
    iteration int not null default 0,
    started timestamp not null,
    idea int    not null constraint project_idea_id_fk references idea,
    pm int    not null constraint project_character_id_fk references character
  );


alter table if exists project owner to backend;
alter table if exists host add constraint host_project_id_fk foreign key (project) references project	on delete cascade;

create table if not exists research
  (
    id    serial not null constraint research_pk primary key,

    state varchar(255),
    started timestamp not null,
    ai    int    not null,
    idea  int    not null
  );
alter table if exists research owner to backend;
