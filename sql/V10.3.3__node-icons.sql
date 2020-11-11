create table if not exists node_icon
(
    id        serial       not null
        constraint node_icon_pk
            primary key,
    name      varchar(255) not null,
    icon_kind varchar(255) not null,
    subnode   int
        constraint node_icon_subnode_id_fk
            references subnode on delete cascade

);

create table if not exists icon_file
(
    id       int                not null
        constraint icon_file_pk
            primary key
        constraint icon_file_node_icon_id_fk
            references node_icon on delete cascade,
    content  text,
    readonly bool default false not null
);

create table if not exists icon_api
(
    id       int          not null
        constraint icon_api_pk
            primary key
        constraint icon_api_node_icon_id_fk
            references node_icon on delete cascade,
    api_kind varchar(255) not null,
    subtype  varchar(255) not null
);


create table if not exists icon_portal
(
    id    int          not null
        constraint icon_portal_api_pk
            primary key
        constraint icon_portal_node_icon_id_fk
            references node_icon on delete cascade,
    color varchar(255) not null
);


