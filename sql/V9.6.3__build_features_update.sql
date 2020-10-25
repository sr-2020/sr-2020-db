alter table metatype
    add if not exists alias varchar(255);

create unique index if not exists metatype_alias_uindex
    on metatype (alias);

alter table archetype
    add if not exists alias varchar(255);

create unique index if not exists archetype_alias_uindex
    on archetype (alias);

alter table aspect
    add if not exists alias varchar(255);

create unique index if not exists aspect_alias_uindex
    on aspect (alias);

alter table character_feature
    add if not exists alias varchar(255);

create unique index if not exists character_feature_alias_uindex
    on character_feature (alias);

alter table archetype_feature
    add if not exists alias varchar(255);
create unique index if not exists archetype_feature_alias_uindex
    on archetype_feature (alias);


alter table ability_pack
    add if not exists alias varchar(255);

alter table archetype_feature
    add if not exists alias varchar(255);

--update metatypes
update metatype
set alias = 'meta-norm'
where name = 'Норм';
update metatype
set alias = 'meta-dwarf'
where name = 'Гном';
update metatype
set alias = 'meta-elf'
where name = 'Эльф';
update metatype
set alias = 'meta-ork'
where name = 'Орк';
update metatype
set alias = 'meta-troll'
where name = 'Тролль';
update metatype
set alias = 'meta-spirit'
where name = 'Дух';
update metatype
set alias = 'meta-ghoul'
where name = 'HMHVV тип 1';
update metatype
set alias = 'meta-ai'
where name = 'Проекция AI';
update metatype
set alias = 'meta-vampire'
where name = 'HMHVV тип 3';
update metatype
set alias = 'meta-eghost'
where name = 'eGhost';
update metatype
set alias = 'meta-werewolf'
where name = 'Другое';

--update archetypes
update archetype
set alias = 'arch-samurai'
where name = 'Самурай';
update archetype
set alias = 'arch-rigger'
where name = 'Риггер';
update archetype
set alias = 'arch-face'
where name = 'Фейс';
update archetype
set alias = 'arch-mage'
where name = 'Маг';
update archetype
set alias = 'arch-hackerman'
where name = 'Хакер';

--update aspects
update aspect
set alias = 'arch-rigger-medic'
where name = 'МЕДИК';
update aspect
set alias = 'arch-rigger-engineer'
where name = 'Инженер';
update aspect
set alias = 'arch-rigger-pilot'
where name = 'ПИЛОТ';
update aspect
set alias = 'arch-samurai-gunner'
where name = 'СТРЕЛОК';
update aspect
set alias = 'arch-samurai-fighter'
where name = 'ГРОМИЛА';
update aspect
set alias = 'arch-samurai-assasin'
where name = 'Ассасин';
update aspect
set alias = 'arch-hackerman-decker'
where name = 'ДЕКЕР';
update aspect
set alias = 'arch-hackerman-cyberadept'
where name = 'КИБЕРАДЕПТ';
update aspect
set alias = 'arch-hackerman-technoshaman'
where name = 'Техношаман';
update aspect
set alias = 'arch-mage-adeptus'
where name = 'Адепт';
update aspect
set alias = 'arch-mage-spellcaster'
where name = 'ЗАКЛИНАТЕЛЬ';
update aspect
set alias = 'arch-mage-summoner'
where name = 'ПРИЗЫВАТЕЛЬ';
update aspect
set alias = 'arch-face-mentalist'
where name = 'МЕНТАЛИСТ';
update aspect
set alias = 'arch-face-discursmonger'
where name = 'Дискурсмонгер';
update aspect
set alias = 'arch-face-geshaftmacher'
where name = 'ГЕШЕФТМАХЕР';

alter table ability_pack
    drop constraint if exists ability_pack_aspect_id_fk_2;

alter table ability_pack
    drop column if exists aspect2;

create table if not exists metatype_feature
(
    id          serial             not null
        constraint metatype_feature_pk primary key,
    alias       varchar(255)       not null,
    name        varchar(255)       not null,
    description text,
    autolock    bool default true  not null,
    hidden      bool default false not null,
    metatype    int
        constraint metatype_feature_metatype_id_fk references metatype
);

create unique index if not exists metatype_feature_name_uindex on metatype_feature (name);

create unique index if not exists metatype_feature_alias_uindex on metatype_feature (alias);

create table if not exists general_feature
(
    id          serial             not null
        constraint general_feature_pk primary key,
    alias       varchar(255)       not null,
    name        varchar(255)       not null,
    description text,
    autolock    bool default true  not null,
    hidden      bool default false not null,
    karma       int  default 0     not null
);

create unique index if not exists general_feature_name_uindex on general_feature (name);

create unique index if not exists general_feature_alias_uindex on general_feature (alias);


create table if not exists build_gf
(
    id              serial        not null
        constraint build_gf_pk
            primary key,
    lvl             int default 0 not null,
    locklvl         int default 0 not null,
    general_feature int           not null
        constraint build_gf_general_feature_id_fk
            references general_feature
);

create table if not exists build_mf
(
    id               serial        not null
        constraint build_mf_pk
            primary key,
    lvl              int default 0 not null,
    locklvl          int default 0 not null,
    metatype_feature int           not null
        constraint build_mf_metatype_feature_id_fk
            references metatype_feature
);
