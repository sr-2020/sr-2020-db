alter table transfer
    drop column if exists newlifestyle_from;
alter table transfer
    drop column if exists newlifestyle_to;
alter table transfer
	add column newbalance_from integer NOT NULL;
alter table transfer
	add column newbalance_to integer NOT NULL;
