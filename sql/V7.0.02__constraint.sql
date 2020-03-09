alter table price
	drop constraint if exists price_shop_fk;
alter table price
	drop constraint if exists price_corporation_fk;
alter table price
	drop constraint if exists price_character_fk;
alter table price
	add constraint price_shop_fk FOREIGN KEY (shop) REFERENCES shop_wallet (id);
alter table price
	add constraint price_corporation_fk FOREIGN KEY (corporation) REFERENCES corporation_wallet (id);
alter table price
	add constraint price_character_fk FOREIGN KEY (character) REFERENCES character (id);	
	
