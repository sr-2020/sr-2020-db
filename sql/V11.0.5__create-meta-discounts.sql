-- auto-generated definition
create table if not exists archetype_discount
(
    id        serial  not null
        constraint archetype_discount_pk primary key,
    metatype  integer not null
        constraint archetype_discount_metatype_id_fk references metatype,
    archetype integer not null
        constraint archetype_discount_archetype_id_fk references archetype,
    size      integer not null
);

alter table archetype_discount
    owner to backend;

create unique index if not exists archetype_discount_metatype_archetype_uindex on archetype_discount (metatype, archetype);

insert into archetype_discount (metatype, archetype, size)
values (1, 5, 10)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (1, 6, 5)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (1, 3, 5)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (2, 2, 10)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (2, 4, 5)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (2, 5, 5)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (3, 5, 5)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (3, 4, 5)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (3, 3, 10)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (4, 6, 10)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (4, 2, 5)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (4, 1, 5)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (5, 1, 10)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (5, 6, 5)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (5, 2, 5)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (9, 4, 10)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (9, 3, 5)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (9, 1, 5)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (6, 4, 10)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (6, 3, 5)
on conflict do nothing;
insert into archetype_discount (metatype, archetype, size)
values (6, 1, 5)
on conflict do nothing;
