alter table hangfire_job drop constraint if exists job_type_fk;
drop table if exists hangfire_job_type;
