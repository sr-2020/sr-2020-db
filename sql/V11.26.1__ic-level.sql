update intrusion_control set name = 'Blaster' where name = 'Blazer';

create table if not exists ic_cve
  (
    id           serial not null constraint ic_cve_id_pk primary key,
    cve_text     text   not null,
    task         int    not null,
    settings     text,
    publish_on   timestamp,
    published_by varchar(255)
  );
alter table if exists ic_cve owner to backend;

INSERT INTO ic_cve (cve_text, task)
VALUES ('temp', 1);

create table if not exists ic_level
  (
    id           serial not null constraint ic_level_id_pk primary key,
    level        int,
    autoattack   boolean,
    zoneswitch   boolean,
    burn         boolean,
    harms        boolean,
    kills        boolean,
    firewall     int,
    attack       int,
    variants     int,
    ic           int constraint ic_ic_level_id_fk references intrusion_control,
    cve          int not null constraint cve_ic_cve_id_fk references ic_cve default 1
  );
alter table if exists ic_level owner to backend;

INSERT INTO ic_level (ic, level, cve)
VALUES (1, 1, 1);

alter table ic_instance add if not exists ic_variant int;
alter table ic_instance add if not exists ic_level int not null default 1;
alter table ic_instance add constraint ic_instance_ic_level_id_fk foreign key (ic_level) references ic_level;

alter table ic_instance drop if exists ic_instance_intrusion_control_id_fk;
alter table ic_instance drop if exists ic;
