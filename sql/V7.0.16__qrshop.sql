create table if not exists qr_shop
(
    id serial not null
		constraint qr_shop_pk primary key,
	shop integer null
		constraint qr_shop_shop_fk references shop_wallet(id),
	sku integer null
		constraint qr_shop_sku_fk references sku(id)

);
alter table qr_shop
    owner to backend;
	