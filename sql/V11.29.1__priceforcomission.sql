alter table price add column if not exists shopprice numeric not null default 0;
alter table renta add column if not exists shopprice numeric not null default 0;