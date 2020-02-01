create table if not exists hangfire_job_type
(
    id   serial  not null
		constraint hangfire_job_type_pk primary key,
	name varchar(255)  not null
);

alter table hangfire_job_type
    owner to billing;

create table if not exists hangfire_job
(
    id   serial  not null
		constraint hangfire_job_pk primary key,
	start_time timestamp with time zone not null,
    end_time timestamp with time zone not null,
	cron varchar(255) not null,
	job_name varchar(255) not null,
	job_type integer not null 
		constraint job_type_fk references hangfire_job_type(id) on delete cascade,
	hangfire_startid varchar(255) null,
	hangfire_reccurentid varchar(255) null,
	hangfire_endid varchar(255) null
);

alter table hangfire_job
    owner to billing;
