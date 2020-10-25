alter table sin drop column metatype;
alter table sin add column if not exists metatype int null 
	constraint if not exists sin_metatype_fk references metatype(id) on delete cascade;