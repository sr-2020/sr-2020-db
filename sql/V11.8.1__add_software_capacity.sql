alter table if exists software
    add if not exists capacity int default 0;


alter table if exists software
    add if not exists alarm boolean default false;
