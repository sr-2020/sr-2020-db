alter table ic_cve add if not exists firewall int;
alter table ic_cve add if not exists data text;

alter table ic_level drop constraint ic_ic_level_id_fk;
alter table ic_level drop column ic;

alter table ic_cve add ic int default 1 not null;
alter table ic_cve add constraint ic_cve_intrusion_control_id_fk foreign key (ic) references intrusion_control on delete cascade;
