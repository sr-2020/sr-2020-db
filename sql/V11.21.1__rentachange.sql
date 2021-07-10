alter table renta drop constraint renta_sin_fk;
alter table renta alter column sin drop not null;