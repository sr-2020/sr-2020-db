create table if not exists foundation_run_node
(
    id serial not null
        constraint foundation_run_room_pk
            primary key,
    passed boolean default false not null,
    started boolean default false not null,
    foundation_node int not null
        constraint foundation_run_room_foundation_node_id_fk
            references foundation_node on delete cascade,
    foundation_run int not null
        constraint foundation_run_room_foundation_run_id_fk
            references foundation_run
);


alter table technomancer drop constraint technomancer_foundation_run_id_fk;

alter table technomancer
    add constraint technomancer_foundation_run_id_fk
        foreign key (active_run) references foundation_run
            on delete set null;

alter table foundation_run_node drop constraint foundation_run_room_foundation_run_id_fk;

alter table foundation_run_node
    add constraint foundation_run_room_foundation_run_id_fk
        foreign key (foundation_run) references foundation_run
            on delete cascade;

alter table foundation_run_participant drop constraint foundation_run_participant_foundationrun_id_fk;

alter table foundation_run_participant
    add constraint foundation_run_participant_foundationrun_id_fk
        foreign key (run) references foundation_run
            on delete cascade;

alter table foundation_run_sprite drop constraint foundation_run_sprite_foundation_run_id_fk;

alter table foundation_run_sprite
    add constraint foundation_run_sprite_foundation_run_id_fk
        foreign key (run) references foundation_run
            on delete cascade;

alter table foundation_run add timer_enabled boolean default false not null;

alter table foundation_run_participant add dumpshocked boolean default false;
