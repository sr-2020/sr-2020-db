-- karma-bonuses

drop table if exists karma_bonus;

create table if not exists karma_bonus
(
    id           serial       not null
        constraint karma_bonus_pk primary key,
    amount       integer      not null,
    kind         varchar(255) not null,
    details      varchar(1024),
    requested_by varchar(255),
    requested_on date,
    approved_by  varchar(255),
    approved_on  date,
    character    integer      not null
        constraint karma_bonus_character_id_fk references character
);

alter table karma_bonus
    owner to backend;
