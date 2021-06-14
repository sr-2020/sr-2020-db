alter table if exists join_character add if not exists character_grid_name varchar(1024);
alter table if exists join_character add if not exists payed bool;

insert into authority (name) values ('ROLE_DECKER');
insert into authority (name) values ('ROLE_TECHNO');
insert into authority (name) values ('ROLE_FOUNDADMIN');
insert into authority (name) values ('ROLE_DEMIGOD');
