update user_login
set name = null
where login !~ 'gmail'
  and login !~ '.ru';

alter table user_login
    drop constraint if exists user_login_player_id_fk;
alter table user_login
    drop column if exists player;

alter table character
    drop constraint if exists character_player_id_fk;
alter table character
    drop column if exists player;

drop table if exists player;