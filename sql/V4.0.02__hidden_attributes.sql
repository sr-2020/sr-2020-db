alter table if exists metatype
    add if not exists hidden boolean default false not null;

alter table if exists metatype
    rename column karma to cost;

alter table if exists ability_pack
    add if not exists  hidden boolean default false not null;

alter table if exists archetype
    add if not exists hidden boolean default false not null;

alter table if exists archetype_feature
    add if not exists hidden boolean default false not null;

alter table if exists aspect
    add if not exists hidden boolean default false not null;

alter table if exists character_feature
    add if not exists hidden boolean default false not null;

