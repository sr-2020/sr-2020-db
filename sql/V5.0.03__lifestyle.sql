alter table sin_details drop CONSTRAINT sin_details_lifestyle_fk
alter table transfer drop constraint transfer_lifestylefrom_fk
alter table transfer drop constraint transfer_lifestyleto_fk
drop table if exists lifestyle
