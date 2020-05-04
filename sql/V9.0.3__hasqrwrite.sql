alter table renta add column if not exists has_qr_write boolean not null default false;
alter table renta add column if not exists price integer not null
		constraint renta_price_fk references price(id);