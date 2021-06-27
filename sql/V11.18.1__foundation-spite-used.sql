alter table if exists foundation_run_sprite add if not exists compiled_by int;
alter table if exists foundation_run_sprite add constraint foundation_run_sprite_foundation_run_participant_id_fk foreign key (compiled_by) references foundation_run_participant on delete set null;
