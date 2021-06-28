create table if not exists host_admin
  (
    id     serial not null constraint host_admin_pk primary key,
    host   int    not null constraint host_admin_host_id_fk references host on delete cascade,
    hacker int    not null constraint host_admin_hacker_id_fk references hacker on delete cascade
  );

alter table if exists host_admin owner to backend;
