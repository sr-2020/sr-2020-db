create table if not exists ic_instance
(
    id        serial not null
        constraint ic_instance_pk
            primary key,
    condition int    not null,
    level     int    not null,
    variant   int    not null,
    ic        int
        constraint ic_instance_intrusion_control_id_fk
            references intrusion_control
);

create table if not exists node_link
(
    id serial not null
        constraint node_link_pk
            primary key,
    ic int
        constraint node_link_intrusion_control_id_fk
            references ic_instance on delete cascade
);

create table if not exists subnode
(
    id          serial       not null
        constraint subnode_pk
            primary key,
    name        varchar(255) not null,
    description text,
    north       int
        constraint subnode_node_link_id_fk
            references node_link on delete cascade,
    south       int
        constraint subnode_node_link_id_fk_2
            references node_link on delete cascade,
    east        int
        constraint subnode_node_link_id_fk_3
            references node_link on delete cascade,

    west        int
        constraint subnode_node_link_id_fk_4
            references node_link on delete cascade,
    host        int          not null
        references host on delete cascade

);

alter table host
    add if not exists entry int;

alter table host
    add constraint host_subnode_id_fk_2
        foreign key (entry) references subnode;
