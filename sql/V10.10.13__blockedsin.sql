alter table beat_history drop column if exists billing_action;
alter table beat_history drop column if exists success;
drop table billing_action;
alter table SIN add COLUMN blocked boolean not null default false;
