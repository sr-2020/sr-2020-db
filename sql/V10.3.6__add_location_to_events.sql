alter table evt_dumpshock
	add if not exists location int;

alter table evt_dumpshock
	add constraint evt_dumpshock_location_id_fk
		foreign key (location) references location;

alter table evt_character_updated
	add if not exists location int;

alter table evt_character_updated
	add constraint evt_character_updated_location_id_fk
		foreign key (location) references location;


alter table evt_food_consumption
	add if not exists location int;

alter table evt_food_consumption
	add constraint evt_food_consumption_location_id_fk
		foreign key (location) references location;

alter table evt_health_state
	add if not exists location int;

alter table evt_health_state
	add constraint evt_health_state_location_id_fk
		foreign key (location) references location;

alter table evt_dumpshock
	add if not exists location int;

alter table evt_implant_install
	add constraint evt_implant_install_location_id_fk
		foreign key (location) references location;

alter table evt_pill_consumption
    add if not exists location int;

alter table evt_pill_consumption
    add constraint evt_pill_consumption_location_id_fk
        foreign key (location) references location;

alter table evt_reanimates
    add if not exists location int;

alter table evt_reanimates
    add constraint evt_reanimates_location_id_fk
        foreign key (location) references location;



alter table evt_feature_used
    rename column origin_character to target_character;

alter table evt_feature_used
    alter column character set not null;


alter table evt_feature_used
    rename column action to target_type;

alter table evt_feature_used
    add if not exists target2 varchar(255);
alter table evt_feature_used
    add if not exists target_type2 varchar(255);

alter table evt_feature_used
    add if not exists target3 varchar(255);
alter table evt_feature_used
    add if not exists target_type3 varchar(255);

