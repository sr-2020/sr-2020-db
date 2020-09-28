create table if not exists billing_cycle
(
    id  serial  not null
		constraint billing_cycle_pk primary key,
	start_time timestamp with time zone  not null,
	finish_time timestamp with time zone not null,
	rents integer not null
);
alter table billing_cycle
    owner to backend;
	
