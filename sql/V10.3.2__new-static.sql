create table if not exists cyberdeck
(
    id             serial
        constraint cyberdeck_pk
            primary key,
    alias          varchar(255)  not null,
    name           varchar(1024),
    description    text,
    slots          int           not null default 0,
    overclock      int           not null default 0,
    attack         numeric(2, 2) not null default 0.0,
    firewall       numeric(2, 2) not null default 0.0,
    sleaze         numeric(2, 2) not null default 0.0,
    dataprocessing numeric(2, 2) not null default 0.0
);

create unique index if not exists cyberdeck_alias_uindex
    on cyberdeck (alias);


create table if not exists software
(
    id          serial
        constraint software_pk
            primary key,
    alias       varchar(255) not null,
    name        varchar(1024),
    description text,
    ram         int          not null default 0
);

create unique index if not exists software_alias_uindex
    on software (alias);
