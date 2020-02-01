create table if not exists hangfire_job_type
(
    id   serial  not null,
	name text COLLATE not null
);

alter table hangfire_job_type
    owner to billing;


create table if not exists hangfire_job
(
    id   serial  not null,
	start_time timestamp with time zone not null,
    end_time timestamp with time zone not null,
	cron text COLLATE not null,
	job_name text COLLATE not null,
	constraint job_type references hangfire_job_type on delete cascade,
	hangfire_startid text COLLATE null,
	hangfire_reccurentid text COLLATE null,
	hangfire_endid text COLLATE null
);

alter table hangfire_job
    owner to billing;
