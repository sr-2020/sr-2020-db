alter table corporation_wallet add column last_kpi numeric not null default 0;
alter table corporation_wallet add column current_kpi numeric not null default 0;