alter table player
    add if not exists join_name varchar(255);

alter table player
    add if not exists join_email varchar(255);
