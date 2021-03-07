create table if not exists billing_cycle
(
    id  serial  not null
		constraint billing_cycle_pk primary key,
	number integer not null,
	is_active boolean not null,
	token text not null
);
alter table billing_cycle
    owner to backend;
	
create table if not exists billing_action
(
    id  serial  not null
		constraint billing_action_pk primary key,
	alias text not null,
	cycle integer not null default 0,
	beat integer not null default 0,
	enabled boolean not null default false
);
alter table billing_action
    owner to backend;
	
create table if not exists beat_history
(
    id  serial  not null
		constraint beat_history_pk primary key,
	comment text null,
	success boolean not null default false,
	billing_beat integer not null 
		CONSTRAINT history_beat_fk references billing_beat(id),
	billing_action integer not null 
		CONSTRAINT history_action_fk references billing_action(id)
);
alter table billing_action
    owner to backend;	

delete from billing_beat;
alter table billing_beat drop column if exists period;
alter table billing_beat drop column if exists success_inflation;
alter table billing_beat drop column if exists success_rent;
alter table billing_beat drop column if exists success_ikar;
alter table billing_beat drop column if exists success_work;
alter table billing_beat drop column if exists success_scoring;
alter table billing_beat add column if not exists number integer not null;
alter table billing_beat add column if not exists billing_cycle integer not null CONSTRAINT beat_cycle_fk references billing_cycle(id);
	


insert into billing_action(alias, cycle, beat, enabled) values('renta', 0, 0, true);
insert into billing_action(alias, cycle, beat, enabled) values('inflation', 0, 4, true);
insert into billing_action(alias, cycle, beat, enabled) values('ikar', 0, 4, true);
insert into billing_action(alias, cycle, beat, enabled) values('scoring', 0, 4, true);
insert into system_settings(key, value) values('token', 'test');
