alter table if exists user_authority
    drop column if exists name;

alter table user_login
    add constraint user_login_player_id_fk
        foreign key (player) references player;

alter table user_login
    alter column password_hash drop not null;
