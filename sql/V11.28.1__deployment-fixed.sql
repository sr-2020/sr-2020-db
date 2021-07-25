alter table icon_deployment add origin varchar(255);
alter table icon_deployment add charges int;
alter table icon_deployment add capacity int;
alter table icon_deployment add data_trail varchar(255);

alter table icon_deployment drop constraint icon_deployment_deployed_by_id_fk;
alter table icon_deployment drop column deployed_by;

alter table icon_deployment alter column raw_data drop not null;
alter table icon_deployment alter column raw_data drop default;
