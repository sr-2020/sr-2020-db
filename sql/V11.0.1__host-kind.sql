alter table host
    add if not exists kind  varchar(200);

alter table node_icon
    drop column if exists persist;

alter table node_icon
    add if not exists valid_till timestamp;


create table icon_trace
(
    id     int not null,
    hacker int not null
        constraint icon_trace_hacker_id_fk
            references hacker
);

alter table evt_location_changed
    owner to backend;

alter table icon_trace
    owner to backend;
