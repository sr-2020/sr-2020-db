alter table sin_details drop column if exists lifestyle;
alter table wallet add column lifestyle integer not null;
