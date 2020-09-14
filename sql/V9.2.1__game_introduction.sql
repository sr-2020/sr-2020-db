create table if not exists game
(
    id      serial       not null
        constraint game_pk primary key,
    name    varchar(255) not null,
    join_id int          not null,
    password_field_id int   not null
);

alter table game
    owner to backend;

insert into game (id, name, join_id, password_field_id)
values (1, 'Россия-2090', 509, 38721)
on conflict (id) do update set name    = excluded.name,
                               join_id = excluded.join_id,
                               password_field_id = excluded.password_field_id;
insert into game (id, name, join_id, password_field_id)
values (2, 'Амур, амур', 795, 39695)
on conflict (id) do update set name    = excluded.name,
                               join_id = excluded.join_id,
                               password_field_id = excluded.password_field_id;

--add ref to character
alter table character
    add if not exists game integer;
alter table character
    add constraint character_game_id_fk foreign key (game) references game;

update character
set game = 1
where character.game is null;

alter table character
    alter column game set not null;

--add ref to last updated
alter table join_last_import
    add if not exists game integer;

alter table join_last_import
    add constraint join_last_import_game_id_fk foreign key (game) references game;

update join_last_import
set game = 1
where join_last_import.game is null;

alter table join_last_import
    alter column game set not null;

ALTER SEQUENCE join_last_import_id_seq RESTART WITH 2;


--add ref to join_field
alter table join_field
    add if not exists game integer;

alter table join_field
    add constraint join_field_game_id_fk foreign key (game) references game;

update join_field
set game = 1
where join_field.game is null;

alter table join_field
    alter column game set not null;


--add ref to join_group
alter table join_group
    add if not exists game integer;

alter table join_group
    add constraint join_group_game_id_fk foreign key (game) references game;

update join_group
set game = 1
where join_group.game is null;

alter table join_group
    alter column game set not null;
