alter table SIN add CONSTRAINT character_unique UNIQUE(character);

create table if not exists corporation_wallet
(
    id serial  not null
		constraint corporation_wallet_pk primary key,
	id_foreign integer not null,
	wallet integer  not null
		constraint corporation_wallet_fk references wallet(id) on delete cascade,
	UNIQUE(id_foreign)
	
);

alter table corporation_wallet
    owner to backend;

create table if not exists shop_wallet
(
    id serial  not null
		constraint shop_wallet_pk primary key,
	id_foreign integer not null,
	wallet integer  not null
		constraint shop_wallet_fk references wallet(id) on delete cascade,
	UNIQUE(id_foreign)
	
);

alter table shop_wallet
    owner to backend;
	
create table if not exists price
(
    id serial  not null
		constraint price_pk primary key,
	product_type integer not null 
		constraint price_product_type_fk references product_type(id) on delete cascade,
	corporation integer not null 
		constraint price_corporation_fk references corporation_wallet(id_foreign) on delete cascade,
	shop integer not null 
		constraint price_shop_fk references shop_wallet(id_foreign) on delete cascade,
	character integer not null
		constraint price_character_fk references sin(character) on delete cascade,
	base_price decimal not null,
	date_created timestamp with time zone not null,
	scoring decimal not null,
	discount decimal not null,
	shop_comission decimal not null
);

alter table price
    owner to backend;
	
create table if not exists renta
(
	id serial  not null
		constraint price_pk primary key,
	price integer not null 
		constraint price_price_fk references price(id) on delete cascade

);
alter table renta
    owner to backend;