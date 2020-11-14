create table if not exists hacker
(
    id        serial       not null
        constraint hacker_pk
            primary key,
    nick      varchar(255) not null,
    kind      varchar(255) not null,
    character int
        constraint hacker_character_id_fk
            references character
);

create unique index if not exists hacker_nick_uindex
    on hacker (nick);

alter table hacker
    owner to backend;

DO
$$
    DECLARE
        gr8b int;
    begin

        select d.id into gr8b from decker d where d.nick = 'gr8b';
        raise notice 'Value: %', gr8b;
        if (gr8b is null) then
            insert into decker (id, nick, jacked, channel) values (1, 'gr8b', false, 'calvin@xmpp.co') RETURNING id INTO gr8b;
        end if;
        raise notice 'Value: %', gr8b;
        insert into hacker (id, nick, kind, character) values (gr8b, 'gr8b', 'decker', null);

    END
$$;

alter table decker
    alter column id drop default;

drop sequence if exists decker_id_seq;

alter table decker
    drop column if exists nick;

alter table decker
    add if not exists cyberdeck int;

alter table decker
    add constraint decker_cyberdeck_id_fk
        foreign key (cyberdeck) references cyberdeck;

alter table decker
    add if not exists deck_details text;

create table if not exists activated_soft
(
    id serial not null
        constraint activated_soft_pk
            primary key,
    data text not null,
    timestamp timestamp not null,
    software int not null
        constraint activated_soft_software_id_fk
            references software
            on delete cascade,
    decker int not null
        constraint activated_soft_decker_id_fk
            references decker
            on delete cascade
);

alter table activated_soft
    owner to backend;
