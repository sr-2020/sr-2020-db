create table if not exists corporation_specialisation
(
    id  serial  not null
		constraint corporation_specialisation_pk primary key,
    corporation  integer constraint corporation_specialisation_corporation_fk references corporation_wallet on delete cascade,
	specialisation integer constraint corporation_specialisation_specialisation_fk references specialisation on delete cascade,
	ratio numeric not null
);
alter table corporation_specialisation
    owner to backend;


