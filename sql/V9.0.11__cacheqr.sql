create table if not exists cache_qr_cont
(
    id serial not null
		constraint cache_qr_cont_pk primary key,
	qr_id bigint not null,
	encoded varchar(255) not null
	
);
alter table cache_qr_cont
    owner to backend;

