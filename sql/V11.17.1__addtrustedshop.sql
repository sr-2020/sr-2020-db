create table if not exists shop_trusted
(
    id  serial  not null
		constraint shop_trusted_pk primary key,
	shop integer not null 
		constraint shop_trusted_shop_fk references shop_wallet(id) on delete cascade,
	model integer not null
);
alter table shop_trusted
    owner to backend;

