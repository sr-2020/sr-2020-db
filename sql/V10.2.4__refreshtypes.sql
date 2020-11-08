--refresh db
delete from transfer;
delete from renta;
delete from price;
delete from sku;
delete from nomenklatura;
delete from product_type;
delete from system_settings where ss_key = 'insuranceid';



drop table event_lifestyle;
create table if not exists scoring_event_lifestyle
(
    id  serial  not null
		constraint scoring_event_lifestyle_pk primary key,
	scoring_factor integer  not null
		constraint scoring_event_lifestyle_scoring_factor_fk references scoring_factor(id) on delete cascade,
	event_number integer not null,
	value numeric not null
);
alter table scoring_event_lifestyle
    owner to backend;	

insert into product_type (name, discount_type, external_id, alias) values('Страховка', 1, 0, 'Insurance');
insert into product_type (name, discount_type, external_id, alias) values('Имплант', 1, 0, 'Implant');
insert into product_type (name, discount_type, external_id, alias) values('Еда', 1, 0, 'Food');
insert into product_type (name, discount_type, external_id, alias) values('Оружие', 2, 0, 'Weapon');
insert into product_type (name, discount_type, external_id, alias) values('Препараты', 1, 0, 'Pill');
insert into product_type (name, discount_type, external_id, alias) values('Магические предметы', 1, 0, 'Magic');


alter table scoring_category
	 add column if not exists code text null;
    