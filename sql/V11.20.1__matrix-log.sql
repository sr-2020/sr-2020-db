drop table if exists matrix_log;

-- auto-generated definition
create table matrix_log
  (
    id          serial             not null constraint matrix_log_pk primary key,
    timestamp   timestamp,
    host        varchar(255),
    level       varchar(255),
    message     text,
    actor       varchar(255),
    other_actor varchar(255),
    event       varchar(255),
    data        text,
    hidden      bool default false not null

  );

alter table matrix_log owner to backend;
