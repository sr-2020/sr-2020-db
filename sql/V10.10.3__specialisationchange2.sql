drop table if exists specialisation;
create table if not exists specialisation
(
    id  serial  not null
		constraint specialisation_pk primary key,
	name text not null,
	product_type integer not null
		constraint specialisation_product_type_fk references product_type(id) on delete cascade
);
alter table specialisation
    owner to backend;
create table if not exists shop_specialisation
(
    id  serial  not null
		constraint shop_specialisation_pk primary key,
	specialisation integer not null
		constraint shop_specialisation_specialisation_fk references specialisation(id) on delete cascade,
	shop integer not null
		constraint shop_specialisation_shop_wallet_fk references shop_wallet(id) on delete cascade	
);
alter table shop_specialisation
    owner to backend;
	
	
delete from product_type where alias = 'Other';
insert into product_type (name, discount_type, external_id, alias) values('Прочее', 1, 0, 'Other');
insert into specialisation(product_type, name) values((select id from product_type where alias = 'Other'), 'test');
	
alter table nomenklatura drop constraint if exists nomenklatura_product_type_fk;
alter table nomenklatura drop column IF EXISTS product_type;
alter table nomenklatura add if not exists specialisation integer null
   constraint nomenklatura_specialisation_fk references specialisation(id) on delete cascade;
update nomenklatura set specialisation = (select id from specialisation where name = 'test');
alter table nomenklatura alter column specialisation set not null;