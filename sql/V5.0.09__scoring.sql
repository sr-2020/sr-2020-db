create table if not exists scoring
(
    id serial not null
		constraint scoring_pk primary key,
	current_scoring decimal not null
	
);
alter table scoring
    owner to backend;

create table if not exists scoring_category
(
    id serial not null
		constraint scoring_category_pk primary key,
	name varchar(255) not null,
	weight decimal not null
);
alter table scoring_category
    owner to backend;
	
create table if not exists scoring_factor
(
    id serial not null
		constraint scoring_factor_pk primary key,
	name varchar(255) not null,
	algorythm int not null,
	category int not null
		constraint scoring_factor_category_fk references scoring_category(id) on delete cascade
);
alter table scoring_factor
    owner to backend;
	
create table if not exists scoring_factor_calculate
(
    id serial not null
		constraint scoring_factor_calculate_pk primary key,
	factor int not null 
		constraint scoring_factor_calculate_factor_fk references scoring_factor(id) on delete cascade,
	base decimal not null,
	current decimal not null
);
alter table scoring_factor_calculate
    owner to backend;	

create table if not exists scoring_category_calculate
(
    id serial not null
		constraint scoring_category_calculate_pk primary key,
	scoring int not null 
		constraint scoring_category_calculate_sin_fk references scoring(id) on delete cascade,
	category int not null 
		constraint scoring_category_calculate_category_fk references scoring_category(id) on delete cascade,
	current decimal not null
);
alter table scoring_category_calculate
    owner to backend;	


drop table if exists sin_details;
alter table sin drop constraint if exists sin_character_id_fk;
alter table sin alter column race drop not null;
alter table sin alter column sin_text drop not null;
alter table sin alter column person_name drop not null;
alter table sin alter column citizenship drop not null;
alter table sin add column wallet integer null
	constraint sin_wallet_fk references wallet(id) on delete cascade;
alter table sin add column scoring integer null
	constraint sin_scoring_fk references scoring(id) on delete cascade;
alter table sin add column work integer null;
alter table sin add column ikar integer null;
alter table sin add column eversion varchar(255) null;


