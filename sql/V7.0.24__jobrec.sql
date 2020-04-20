alter table hangfire_job drop column if exists hangfire_reccurentid;
alter table hangfire_job add column if not exists hangfire_recurringid varchar(255) null;