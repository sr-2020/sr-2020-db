alter table if exists passport
    add if not exists original_person_name varchar(255);

alter table if exists passport
    add if not exists original_metatype integer;

alter table if exists passport
    add if not exists original_citizenship varchar(255);

alter table if exists passport
    add if not exists original_mortgagee varchar(255);

alter table if exists passport
    add if not exists original_viza varchar(255);

alter table if exists passport
    add if not exists original_sin_text varchar(255);

alter table if exists passport
    add constraint passport_original_metatype_id_fk
        foreign key (original_metatype) references metatype;

alter table if exists passport
    add if not exists true_person_name varchar(255);

alter table if exists passport
    add if not exists true_metatype integer;

alter table if exists passport
    add if not exists true_citizenship varchar(255);

alter table if exists passport
    add if not exists true_mortgagee varchar(255);

alter table if exists passport
    add if not exists true_viza varchar(255);

alter table if exists passport
    add constraint passport_true_metatype_id_fk
        foreign key (true_metatype) references metatype;

alter table if exists passport
    add if not exists true_sin_text varchar(255);
