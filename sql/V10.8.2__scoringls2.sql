do $$
declare fakid integer;
begin

delete from scoring_event_lifestyle;
select id into fakid from scoring_factor where code = 'food_consume';

insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,1,1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,2,1.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,3,2);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,4,2.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,5,3);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,6,3.5);

select id into fakid from scoring_factor where code = 'implant_install';

insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,1,-1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,2,1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,3,2);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,4,3.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,5,4);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,6,5);

select id into fakid from scoring_factor where code = 'buy_other';

insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,1,1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,2,2);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,3,3);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,4,3.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,5,4);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,6,4.5);

select id into fakid from scoring_factor where code = 'buy_weapon';

insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,1,2);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,2,3);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,3,3.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,4,4);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,5,4.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,6,5);

select id into fakid from scoring_factor where code = 'buy_magic';

insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,1,2);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,2,3);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,3,3.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,4,4);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,5,4.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,6,5);

select id into fakid from scoring_factor where code = 'buy_food';

insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,1,-1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,2,1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,3,2);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,4,2.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,5,3.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,6,5);

select id into fakid from scoring_factor where code = 'buy_pill';

insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,1,-1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,2,1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,3,2);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,4,2.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,5,3.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,6,5);

select id into fakid from scoring_factor where code = 'buy_implant';

insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,1,1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,2,2);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,3,2.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,4,3);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,5,3.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,6,4);

select id into fakid from scoring_factor where code = 'metatype';

insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,1,-1.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,2,-1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,3,1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,4,1.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,5,2.5);

select id into fakid from scoring_factor where code = 'insurance';

insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,1,-1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,2,1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,3,1.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,4,2);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,5,2.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,6,3);

select id into fakid from scoring_factor where code = 'pill_use';

insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,1,-3);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,2,-1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,3,1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,4,2);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,5,3);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,6,5);

select id into fakid from scoring_factor where code = 'where_implant_install';

insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,1,-1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,2,1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,3,1.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,4,2);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,5,2.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,6,3);

select id into fakid from scoring_factor where code = 'worse';

insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,1,-2);

select id into fakid from scoring_factor where code = 'dumpshock';

insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,1,-1);

select id into fakid from scoring_factor where code = 'clinical_death';

insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,1,-3);

select id into fakid from scoring_factor where code = 'ls_change';

insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,12,2);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,13,3);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,14,4.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,15,5.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,16,6);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,21,-1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,23,1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,24,2.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,25,3.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,26,5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,31,-2.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,32,-1);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,34,2);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,35,3);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,36,5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,41,-3.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,42,-2.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,43,-2);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,45,3.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,46,5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,51,-5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,52,-4);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,53,-3);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,54,-2);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,56,4.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,61,-6);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,62,-5.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,63,-5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,64,-4.5);
insert into scoring_event_lifestyle (scoring_factor, event_number, value) values(fakid,65,-4);

end
$$