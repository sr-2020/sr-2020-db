alter table if exists user_login
    rename column user_name to login;

alter table if exists user_login
    add if not exists locked bool default false not null;

alter table if exists user_login
    add if not exists name varchar(50);
