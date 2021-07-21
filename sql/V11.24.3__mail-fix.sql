alter table if exists host_mail add if not exists  direction varchar(255) not null;
alter table if exists mail drop if exists direction;
