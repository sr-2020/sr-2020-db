alter table evt_feature_used alter column feature drop not null;
alter table evt_feature_used add if not exists gen_feature int;
alter table evt_feature_used add constraint evt_feature_used_general_feature_id_fk foreign key (gen_feature) references general_feature;
