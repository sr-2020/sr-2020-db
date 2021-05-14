alter table host
    add column if not exists template boolean default false not null;
