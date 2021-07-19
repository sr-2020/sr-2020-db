create table if not exists mail
  (
    id         serial        not null constraint mail_pk primary key,
    direction  varchar(255)  not null default 'out',
    written_on timestamp     not null,
    from_field varchar(1024) not null,
    to_field   varchar(1024) not null,
    cc_field   varchar(1024),
    subj_field varchar(1024) not null,
    mail       text          not null,
    hidden     bool          not null default false
  );
alter table if exists mail owner to backend;

create table if not exists host_mail
  (
    id   serial not null constraint host_mail_pk primary key,
    host int    not null constraint host_mail_host_id_fk references host,
    mail int    not null constraint host_mail_mail_id_fk references mail
  );
alter table if exists host_mail owner to backend;
