create table if not exists scoring_event
(
    id  serial  not null
		constraint scoring_event_pk primary key,
	scoring integer not null
		constraint scoring_event_scoring_fk references scoring(id) on delete cascade,
	scoring_factor integer  not null
		constraint scoring_event_scoring_factor_fk references scoring_factor(id) on delete cascade,
	start_time datetime not null,
	finish_time datetime not null
);
alter table scoring_event
    owner to backend;
	
