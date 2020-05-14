-- krivda

alter table character
    add appuser int;

alter table character
    add constraint character_user_login_id_fk
        foreign key (appuser) references user_login;

alter table character
    alter column player drop not null;

alter table user_login
    alter column name type varchar(255) using name::varchar(255);
