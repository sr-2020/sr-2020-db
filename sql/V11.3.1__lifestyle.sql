alter table wallet add column IF NOT EXISTS is_irridium boolean not null default false;

insert into system_settings (key, value) values('ls_dto', 'init');


