alter table price
	drop constraint if exists price_character_fk;
alter table price
	drop column if exists character;
alter table price
	add column sin integer not null;
alter table price
	add constraint price_sin_fk FOREIGN KEY (sin) REFERENCES sin (id);	
	