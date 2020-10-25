alter table sin drop column race;
alter table sin add column if not exists metatype int not null default(1);