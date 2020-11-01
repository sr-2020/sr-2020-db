create table if not exists billing_ability_used
(
    id serial not null
		constraint billing_ability_used_pk primary key,
	public string message,
	public string key
	
);
alter table billing_ability_used
    owner to backend;