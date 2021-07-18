alter table character add operator int;
alter table character add constraint character_backdoor_source_id_fk foreign key (operator) references backdoor_source (id);
