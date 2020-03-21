alter table product_type 
	 drop column if exists code;
alter table product_type 
	drop column if exists description;
alter table product_type 
	drop column if exists lifestyle;
alter table product_type 
	drop column if exists base_price;
create table if not exists nomenklatura
(
    id serial not null
		constraint nomenklatura_pk primary key,
	code text not null,
	name varchar(255) null,
	description text null,
	base_price decimal not null,
	lifestyle integer not null,
	product_type integer not null
		constraint nomenklatura_product_type_fk references product_type(id)
);
alter table nomenklatura
    owner to backend;	
create table if not exists sku
(
    id serial not null
		constraint sku_pk primary key,
	nomenklatura integer not null
		constraint sku_nomenklatura_fk references nomenklatura(id),
	count integer not null,
	corporation integer not null
		constraint sku_corporation_fk references corporation_wallet(id),
	enabled boolean not null,
	name varchar(255) null
);
alter table sku
    owner to backend;

create table if not exists specialisation
(
    id serial not null
		constraint specialisation_pk primary key,
	shop integer not null
		constraint specialisation_shop_fk references shop_wallet(id),
	nomenklatura integer not null
		constraint specialisation_nomenklatura_fk references nomenklatura(id)

)
alter table specialisation
    owner to backend;
	
create table if not exists contract
(
    id serial not null
		constraint contract_pk primary key,
	shop integer not null
		constraint contract_shop_fk references shop_wallet(id),
	corporation integer not null
		constraint contract_corporation_fk references corporation_wallet(id)

)
alter table contract
    owner to backend;
	
create table if not exists contract_limit
(
    id serial not null
		constraint contract_limit_pk primary key,
	contract integer not null
		constraint contract_limit_contract_fk references contract(id),
	sku integer not null
		constraint contract_limit_sku_fk references sku(id)

)
alter table contract
    owner to backend;
	
alter table shop_wallet drop column if exists comission;	
alter table shop_wallet add column lifestyle integer not null;
alter table price drop constraint if exists price_product_type_fk;
alter table price drop column if exists product_type;
alter table price drop constraint if exists price_corporation_fk;
alter table price drop column if exists corporation;
alter table price add column sku integer not null 
	constraint price_sku_fk references sku(id);
alter table renta drop constraint if exists price_product_type_fk;
alter table renta drop column if exists product_type;	
alter table renta drop constraint if exists price_corporation_fk;
alter table renta drop column if exists corporation;	
alter table renta add column sku integer not null 
	constraint renta_sku_fk references sku(id);
