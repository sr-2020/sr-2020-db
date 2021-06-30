create table if not exists idea
  (
    id   serial        not null constraint idea_pk primary key,
    name varchar(1024) not null
  );

alter table if exists idea owner to backend;

create table if not exists project
  (
    id   serial not null constraint project_pk primary key,
    idea int    not null constraint project_idea_id_fk references idea,
    pm int    not null constraint project_character_id_fk references character
  );

alter table if exists project owner to backend;


alter table host add location int;
alter table host add project int;
alter table host add legal_entity int;
alter table host add corporation int;

alter table host add constraint host_location_id_fk foreign key (location) references location;
alter table host add constraint host_project_id_fk foreign key (project) references project;
alter table host add constraint host_shop_wallet_id_fk foreign key (legal_entity) references shop_wallet;
alter table host add constraint host_corporation_wallet_id_fk foreign key (corporation) references corporation_wallet;
