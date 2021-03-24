alter table scoring_event add  if not exists old_scoring_value numeric not null default 0;
alter table scoring_event add  if not exists new_scoring_value numeric not null default 0;