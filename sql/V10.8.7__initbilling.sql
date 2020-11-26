create table if not exists tmp_billing_init
(
    id  serial  not null
		constraint tmp_billing_init_pk primary key,
	model integer not null,
	start_cash numeric not null,
	start_fak numeric not null,
	citizen text not null,
	nation text not null,
	status text not null 
);
alter table tmp_billing_init
    owner to backend;