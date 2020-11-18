alter table evt_feature_used
    alter column target_type drop not null;

alter table cyberdeck
    add ram int default 0 not null;
