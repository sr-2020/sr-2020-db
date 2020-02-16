create table if not exists sin_details
(
    id   serial  not null
		constraint sin_details_pk primary key,
	wallet integer  not null,
		constraint sin_details_wallet_fk references wallet(id) on delete cascade,
	sin integer not 
		constraint sin_details_sin_fk references sin(id) on delete cascade,
	lifestyle integer not null,
		constraint sin_details_lifestyle_fk references lifestyle(id) on delete cascade,
	scoring integer null,
	work integer null,
	ikar integer null
	
);
alter table sin_details
    owner to billing;


create table if not exists lifestyle
(
    id serial  not null
		constraint lifestyle_pk primary key,
	name varchar(255) not null
	
);
alter table lifestyle
    owner to billing;

create table if not exists wallet
(
    id serial  not null
		constraint wallet_pk primary key,
	balance decimal not null
	
);
alter table wallet
    owner to billing;

create table if not exists transfer
(
    id serial not null
		constraint transfer_pk primary key,
	wallet_from integer not null
		constraint transfer_walletfrom_fk references wallet(id) on delete cascade,
	wallet_to integer not null
		constraint transfer_walletto_fk references wallet(id) on delete cascade,
	amount decimal not null,
	comment varchar(255) null,
	renta int null,
	newlifestyle_from int not null
		constraint transfer_lifestylefrom_fk references lifestyle(id) on delete cascade,
	newlifestyle_to int not null
		constraint transfer_lifestyleto_fk references lifestyle(id) on delete cascade
	
);
alter table transfer
    owner to billing;

