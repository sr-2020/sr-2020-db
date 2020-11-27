create table if not exists evt_location_changed
(
    id            serial    not null
        constraint evt_location_changed_pk
            primary key,
    location      int
        constraint evt_location_changed_location_id_fk
            references location,
    prev_location int
        constraint evt_location_changed_location_id_fk_2
            references location,
    character     int       not null
        constraint evt_location_character_id_fk
            references character,
    content       text      not null,
    timestamp     timestamp not null
);

alter table evt_location_changed
    owner to backend;
