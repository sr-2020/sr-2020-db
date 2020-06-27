
alter table shop wallet  drop column if exists owner;
alter table shop_wallet add column if not exists owner integer not null default 0;