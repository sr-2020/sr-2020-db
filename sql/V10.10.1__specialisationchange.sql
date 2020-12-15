delete from specialisation;
alter table specialisation drop CONSTRAINT IF EXISTS specialisation_product_type;
alter table specialisation add nomenklatura integer CONSTRAINT specialisation_nomenklatura not null;
