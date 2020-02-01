alter table metatype
    add hidden boolean default false not null;

alter table ability_pack
    add hidden boolean default false not null;

alter table archetype
    add hidden boolean default false not null;

alter table archetype_feature
    add hidden boolean default false not null;

alter table aspect
    add hidden boolean default false not null;

alter table character_feature
    add hidden boolean default false not null;

alter table if exists metatype
    rename column karma to cost;
