alter table corporation_wallet add column if not exists sku_sold numeric not null default 0;
alter table corporation_wallet add column if not exists sku_sold_last numeric not null default 0;