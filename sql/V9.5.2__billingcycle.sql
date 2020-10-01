alter table sin add column if not exists last_income numeric not null default(0);
alter table sin add column if not exists last_outcome numeric not null default(0);