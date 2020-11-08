alter table product_type
    drop column external_table;
alter table product_type 
	add if not exists alias text null;

	