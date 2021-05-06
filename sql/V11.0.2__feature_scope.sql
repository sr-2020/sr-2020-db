alter table feature
    add if not exists scope varchar(200) default 'master';

alter table feature
    add if not exists autolock bool default false;
