alter table evt_feature_used add if not exists feature_alias varchar(255);

update host
set kind = 'other'
where host.kind = 'corporate'
