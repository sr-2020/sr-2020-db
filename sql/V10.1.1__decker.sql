create table if not exists decker
(
    id     serial                not null
        constraint decker_pk primary key,
    nick   varchar(255),
    jacked boolean default false not null
);

alter table decker
    owner to backend;
