alter table software
    add if not exists kind varchar(255);

alter table software
    add if not exists charges int default 0 not null;

alter table host
    add locked bool default true not null;
