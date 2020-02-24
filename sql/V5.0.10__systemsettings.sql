create table if not exists system_settings
(
    id serial not null
		constraint system_settings_calculate_pk primary key,
	key varchar(255) not null,
	value varchar(255) not null
);
alter table system_settings
    owner to backend;	