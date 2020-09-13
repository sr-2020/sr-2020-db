alter table renta add column if not exists secret text null;
alter table renta add column if not exists lifestyle int not null default(1);