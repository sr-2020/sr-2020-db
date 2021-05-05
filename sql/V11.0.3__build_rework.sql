delete
FROM build_at;
delete
FROM build_at_f;
delete
FROM build_as;
delete
FROM build_as_ap;
delete
FROM build_cf;
delete
FROM build_m;
delete
FROM build_mf;
delete
FROM build_problem;
delete
FROM build_gf;

delete
from archetype_feature af;
delete
from aspect_discount;
delete
from aspect af;


update archetype
set name        = 'Декер',
    description = 'Ты постиг премудрости работы с кибердекой и научился использовать gUmMMy протокол!',
    alias       = 'arch-hackerman-decker'
where alias = 'arch-hackerman';

insert into archetype (name, description, hidden, alias)
values ('Техномант', 'Ты теперь чувствуешь Матрицу. Обычные люди на такое не способны.', false, 'arch-hackerman-technomancer');


alter table build_at_f
    add if not exists feature int;

drop index if exists build_at_f_build_at_archetype_feature_uindex;

create unique index if not exists build_at_f_build_at_feature_uindex
    on build_at_f (build_at, feature);

alter table build_at_f
    drop constraint if exists build_at_f_archetype_feature_id_fk;

alter table build_at_f
    drop column if exists archetype_feature;

alter table build_at_f
    add constraint build_at_f_feature_id_fk
        foreign key (feature) references feature;


alter table build_cf
    add if not exists feature int;

drop index if exists build_cf_build_character_feature_uindex;

create unique index if not exists build_cf_build_feature_uindex
    on build_cf (build, feature);

alter table build_cf
    drop constraint build_cf_character_feature_id_fk;

alter table build_cf
    drop column if exists character_feature;

alter table build_cf
    add constraint build_cf_feature_id_fk
        foreign key (feature) references feature;
