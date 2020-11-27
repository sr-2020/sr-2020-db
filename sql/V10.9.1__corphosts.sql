alter table host
    add if not exists true_name varchar(255);

alter table host
    add hidden bool default false not null;


alter table node_icon
    add if not exists persist boolean default true not null;

alter table subnode
    add if not exists tags varchar(255) default '' not null;

alter table icon_file
    add if not exists metadata varchar(255);

create table if not exists matrix_log
(
    id serial not null
        constraint matrix_log_pk
            primary key,
    event varchar(255) not null,
    actor varchar(255),
    other_actor varchar(255),
    host int
        constraint matrix_log_host_id_fk
            references host,
    data varchar(255),
    data_ext text
);

alter table matrix_log
    owner to backend;
