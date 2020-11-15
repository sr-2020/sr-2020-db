drop table if exists billing_cycle;
create table if not exists billing_beat
(
    id  serial  not null
		constraint billing_beat_pk primary key,
	start_time timestamp with time zone  not null,
	finish_time timestamp with time zone not null,
	success_inflation boolean not null,
	success_scoring boolean not null,
	success_rent boolean not null,
	success_ikar boolean not null,
	success_work boolean not null
);
alter table billing_beat
    owner to backend;
	
insert into system_settings(key,value) values('period_count', '6');
insert into system_settings(key,value) values('beat_cycle', 'true');
insert into system_settings(key,value) values('beat_period', 'true');