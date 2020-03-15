alter table product_type add column lifestyle integer;
alter table product_type add column base_price integer;
alter table shop_wallet add column comission integer;
alter table shop_wallet add column name varchar(200);
alter table corporation_wallet add column name varchar(200);
alter table price drop constraint if exists price_sin_fk;
alter table price drop column if exists sin;
alter table price add column character integer not null;
alter table price add column final_price decimal;
alter table renta drop column if exists price;
alter table renta add column character integer not null;
alter table renta add column product_type integer not null 
		constraint price_product_type_fk references product_type(id);
alter table renta add column corporation integer not null 
		constraint price_corporation_fk references corporation_wallet(id);
alter table renta add column shop integer not null 
		constraint price_shop_fk references shop_wallet(id);
alter table renta add column base_price decimal not null;
alter table renta add column date_created timestamp with time zone not null;
alter table renta add column scoring decimal not null;
alter table renta add column discount decimal not null;
alter table renta add column shop_comission decimal not null;




