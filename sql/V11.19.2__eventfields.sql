alter table scoring_event add column if not exists save_k numeric not null default 0;
alter table scoring_event add column if not exists aver_factors numeric not null default 0;