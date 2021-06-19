alter table if exists decker add if not exists hacker integer;
update decker set hacker = id;
alter table decker alter column hacker set not null;
alter table if exists decker add constraint decker_hacker_id_fk foreign key (hacker) references hacker;

alter table if exists technomancer add if not exists hacker int;
update technomancer set hacker = id;
alter table technomancer alter column hacker set not null;
alter table if exists technomancer add constraint decker_hacker_id_fk foreign key (hacker) references hacker;
