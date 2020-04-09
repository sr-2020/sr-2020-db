alter table corporation_wallet 
	add column if not exists logo_url varchar(100) null;
alter table nomenklatura
	add column if not exists picture_url varchar(100) null;