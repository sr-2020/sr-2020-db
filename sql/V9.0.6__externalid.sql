alter table product_type add column if not exists external_id integer not null default 0;
alter table nomenklatura add column if not exists external_id integer not null default 0;
alter table sku add column if not exists external_id integer not null default 0;