alter table if exists icon_portal add if not exists data_trail varchar(255) not null default 'start';


create table if not exists icon_deployment
  (
    id             integer      not null constraint icon_deployment_pk primary key constraint icon_deployment_node_icon_id_fk references node_icon on delete cascade,
    software_alias varchar(255) not null,
    durable        boolean      not null,
    raw_data       text         not null default '',
    deployed_on    timestamp    not null,
    deployed_by    integer      not null constraint icon_deployment_deployed_by_id_fk references hacker on delete cascade
  );

alter table icon_deployment owner to backend;

delete from icon_trace;
drop table icon_trace;

create table icon_trace
(
    id             integer      not null constraint icon_trace_pk primary key constraint icon_trace_node_icon_id_fk references node_icon on delete cascade,
    hacker int not null
        constraint icon_trace_hacker_id_fk
            references hacker
);
alter table icon_trace owner to backend;
