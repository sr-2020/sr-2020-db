alter table scoring_event
    drop column scoring;
alter table scoring_event
    drop column scoring_factor;
alter table scoring_event
    add column if not exists current_factor integer  not null
		constraint scoring_event_current_factor_fk references current_factor(id) on delete cascade;