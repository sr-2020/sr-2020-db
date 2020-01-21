alter table character
    drop constraint character_player_id_fk;

alter table character
    add constraint character_player_id_fk
        foreign key (player) references player
            on delete cascade;


alter table join_character
    drop constraint join_character_character_id_fk;

alter table join_character
    add constraint join_character_character_id_fk
        foreign key (character) references character
            on delete cascade;

alter table join_field_value
    drop constraint join_field_value_join_character_id_fk;

alter table join_field_value
    add constraint join_field_value_join_character_id_fk
        foreign key (join_character) references join_character
            on delete cascade;

alter table join_group_link
    drop constraint join_group_link_join_character_id_fk;

alter table join_group_link
    add constraint join_group_link_join_character_id_fk
        foreign key (join_character) references join_character
            on delete cascade;

alter table user_login
    drop constraint user_login_player_id_fk;

alter table user_login
    add constraint user_login_player_id_fk
        foreign key (player) references player
            on delete cascade;

alter table user_authority
    drop constraint user_authority_user_login_id_fk;

alter table user_authority
    add constraint user_authority_user_login_id_fk
        foreign key (user_login) references user_login
            on delete cascade;

