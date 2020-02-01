create table if not exists hangfire_job_type
(
    id   serial  not null,
	
	name varchar(255)  not null
);

alter table hangfire_job_type
    owner to billing;


create table if not exists hangfire_job
(
    id   serial  not null,
	start_time timestamp with time zone not null,
    end_time timestamp with time zone not null,
	cron varchar(255) not null,
	job_name varchar(255) not null,
	constraint job_type references hangfire_job_type on delete cascade,
	hangfire_startid varchar(255) null,
	hangfire_reccurentid varchar(255) null,
	hangfire_endid varchar(255) null
);

alter table hangfire_job
    owner to billing;
