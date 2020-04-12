alter table transfer drop column if exists anonymous;
alter table transfer add column if not exists anonymous boolean not null default false;