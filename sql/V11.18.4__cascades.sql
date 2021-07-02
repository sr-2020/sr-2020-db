alter table host drop constraint if exists host_character_id_fk;
alter table host add constraint host_character_id_fk foreign key (character) references character on delete cascade;

alter table evt_character_updated drop constraint if exists evt_character_updated_character_id_fk;
alter table evt_character_updated add constraint evt_character_updated_character_id_fk foreign key (character) references character on delete cascade;

alter table evt_dumpshock drop constraint if exists evt_dumpshock_character_id_fk;
alter table evt_dumpshock add constraint evt_dumpshock_character_id_fk foreign key (character) references character on delete cascade;

alter table evt_feature_used drop constraint if exists evt_feature_used_character_id_fk;
alter table evt_feature_used add constraint evt_feature_used_character_id_fk foreign key (target_character) references character on delete cascade;

alter table evt_feature_used drop constraint if exists evt_feature_used_character_id_fk_2;
alter table evt_feature_used add constraint evt_feature_used_character_id_fk_2 foreign key (character) references character on delete cascade;

alter table evt_food_consumption drop constraint if exists evt_food_consumption_character_id_fk;
alter table evt_food_consumption add constraint evt_food_consumption_character_id_fk foreign key (character) references character on delete cascade;

alter table evt_health_state drop constraint if exists evt_health_state_character_id_fk;
alter table evt_health_state add constraint evt_health_state_character_id_fk foreign key (character) references character on delete cascade;

alter table evt_implant_install drop constraint if exists evt_implant_install_character_id_fk;
alter table evt_implant_install add constraint evt_implant_install_character_id_fk foreign key (character) references character on delete cascade;

alter table evt_location_changed drop constraint if exists evt_location_character_id_fk;
alter table evt_location_changed add constraint evt_location_character_id_fk foreign key (character) references character on delete cascade;

alter table evt_pill_consumption drop constraint if exists evt_pill_consumption_character_id_fk;
alter table evt_pill_consumption add constraint evt_pill_consumption_character_id_fk foreign key (character) references character on delete cascade;

alter table evt_reanimates drop constraint if exists evt_reanimates_character_id_fk;
alter table evt_reanimates add constraint evt_reanimates_character_id_fk foreign key (character) references character on delete cascade;

alter table evt_reanimates drop constraint if exists evt_reanimates_medic_character_id_fk;
alter table evt_reanimates add constraint evt_reanimates_medic_character_id_fk foreign key (medic) references character on delete cascade;

alter table hacker drop constraint if exists hacker_character_id_fk;
alter table hacker add constraint hacker_character_id_fk foreign key (character) references character on delete cascade;

alter table decker drop constraint if exists decker_hacker_id_fk;
alter table decker add constraint decker_hacker_id_fk foreign key (hacker) references hacker on delete cascade;

alter table technomancer drop constraint if exists decker_hacker_id_fk;
alter table technomancer add constraint decker_hacker_id_fk foreign key (hacker) references hacker on delete cascade;

alter table icon_trace drop constraint if exists icon_trace_hacker_id_fk;
alter table icon_trace add constraint icon_trace_hacker_id_fk foreign key (hacker) references hacker on delete cascade;

--#
alter table foundation_run drop constraint if exists foundation_run_host_id_fk;
alter table foundation_run add constraint foundation_run_host_id_fk foreign key (host) references host on delete cascade;
