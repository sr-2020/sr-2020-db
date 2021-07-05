alter table if exists sin drop constraint if exists sin_passport_fk;
alter table if exists sin add constraint sin_passport_fk foreign key (passport) references passport on delete cascade;

alter table if exists sin drop constraint if exists sin_character_id_fk;
alter table if exists sin add constraint sin_character_id_fk foreign key (character) references character on delete cascade;
