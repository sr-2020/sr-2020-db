alter table renta add column if not exists sin integer not null
	constraint renta_sin_fk references sin(id) default(1659);
	
	