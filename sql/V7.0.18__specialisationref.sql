alter table specialisation 
	add column if not exists product_type integer not null
		constraint specialisation_product_type references product_type(id);;
alter table specialisation
	drop constraint if exists specialisation_nomenklatura_fk;
alter table specialisation
	drop column if exists nomenklatura;