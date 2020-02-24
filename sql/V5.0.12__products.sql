create table if not exists product_type
(
    id serial not null
		constraint product_type_pk primary key,
	code varchar(max) not null,
	name varchar(255) null,
	description varchar(max) null
	
);
alter table product_type
    owner to backend;	