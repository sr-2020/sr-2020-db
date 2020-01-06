-- fixing changes made offline
drop table if exists gs_aspect_cost;

--fix game system
alter table game_system
    rename column existing_aspect_discount to aspect_cost;

alter table game_system
    add archetype_cost int default 100 not null;

alter table game_system
    add max_disadvantage int default 70 not null;

alter table game_system
    add max_transfer int default 20 not null;

alter table metatype
    add if not exists cost int default 0 not null;

update metatype
set cost = 30
where name = 'Эльф';

-- drop defaults on non- null
alter table metatype
    alter column cost drop default;

update metatype
set cost = 30
where name = 'Тролль';
update metatype
set cost = 30
where name = 'Эльф';

-- drop defaults on non- null
alter table game_system
    alter column archetype_cost drop default;

alter table game_system
    alter column archetype_cost drop default;

alter table game_system
    alter column max_disadvantage drop default;

alter table game_system
    alter column max_transfer drop default;


UPDATE public.game_system
SET aspect_cost = 60
WHERE id = 1
