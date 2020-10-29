alter table feature
    add if not exists archetype int;

alter table feature
    add if not exists aspect int;

alter table feature
    add constraint feature_archetype_id_fk
        foreign key (archetype) references archetype;

alter table feature
    add constraint feature_aspect_id_fk
        foreign key (aspect) references aspect;
