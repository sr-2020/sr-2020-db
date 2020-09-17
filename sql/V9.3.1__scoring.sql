alter table scoring add column if not exists current_scoring_fix numeric not null default(0);
alter table scoring add column if not exists current_scoring_relative numeric not null default(0);

create table if not exists scoring_category
(
    id  serial  not null
		constraint scoring_category_pk primary key,
	name text not null,
	cat_type integer not null,
	weight numeric not null
);
alter table scoring_category
    owner to backend;
	
create table if not exists current_category
(
    id  serial  not null
		constraint current_category_pk primary key,
	scoring_category integer  not null
		constraint current_category_scoring_category_fk references scoring_category(id) on delete cascade,
	scoring integer not null
		constraint current_category_scoring_fk references scoring(id) on delete cascade,
	current_value numeric not null
);
alter table current_category
    owner to backend;
	
create table if not exists scoring_factor
(
    id  serial  not null
		constraint scoring_factor_pk primary key,
	name text not null,
	scoring_category integer  not null
		constraint scoring_factor_scoring_category_fk references scoring_category(id) on delete cascade,
	code varchar(100) not null
);
alter table scoring_factor
    owner to backend;
	
create table if not exists current_factor
(
    id  serial  not null
		constraint current_factor_pk primary key,
	scoring_factor integer  not null
		constraint current_factor_scoring_factor_fk references scoring_factor(id) on delete cascade,
	scoring integer not null
		constraint current_factor_scoring_fk references scoring(id) on delete cascade,
	current_value numeric not null
);
alter table current_factor
    owner to backend;
	
create table if not exists event_lifestyle
(
    id  serial  not null
		constraint event_lifestyle_pk primary key,
	scoring_factor integer  not null
		constraint event_lifestyle_scoring_factor_fk references scoring_factor(id) on delete cascade,
	event_number integer not null,
	value numeric not null
);
alter table event_lifestyle
    owner to backend;	
	
	
	