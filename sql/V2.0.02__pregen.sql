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
