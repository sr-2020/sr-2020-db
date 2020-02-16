alter table sin_details drop constraint if exists sin_details_lifestyle_fk;
alter table transfer drop constraint if exists transfer_lifestylefrom_fk;
alter table transfer drop constraint if exists transfer_lifestyleto_fk;
drop table if exists lifestyle;
