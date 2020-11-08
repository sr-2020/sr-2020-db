do $$
declare catid integer;
begin

delete from system_settings where ss_key = 'factor_lschange';
delete from system_settings where ss_key = 'factor_test';
delete from scoring_event;
delete from current_factor;
delete from current_category;
delete from scoring_factor;
delete from scoring_category;

insert into scoring_category (name, cat_type, weight) values('test', 0, 0);
select id into catid from scoring_category where name = 'test';
insert into scoring_factor (name, scoring_category, code) values('test', catid, 'test');

insert into scoring_category (name, cat_type, weight) values('Качество жизни', 2, 1);
select id into catid from scoring_category where name = 'Качество жизни';
insert into scoring_factor (name, scoring_category, code) values('Изменение lifestyle', catid, 'ls_change');
insert into scoring_factor (name, scoring_category, code) values('Употребление еды ', catid, 'food_consume');
insert into scoring_factor (name, scoring_category, code) values('Лайфстайл установленного импланта', catid, 'implant_install');
insert into scoring_factor (name, scoring_category, code) values('Другое(покупка)', catid, 'buy_other');
insert into scoring_factor (name, scoring_category, code) values('Оружие(покупка)', catid, 'buy_weapon');
insert into scoring_factor (name, scoring_category, code) values('магические предметы(покупка)', catid, 'buy_magic');
insert into scoring_factor (name, scoring_category, code) values('Еда(покупка)', catid, 'buy_food');
insert into scoring_factor (name, scoring_category, code) values('Препараты(покупка)', catid, 'buy_pill');

insert into scoring_category (name, cat_type, weight) values('Метатип', 2, 1);
select id into catid from scoring_category where name = 'Метатип';
insert into scoring_factor (name, scoring_category, code) values('Метатип', catid, 'metatype');	

insert into scoring_category (name, cat_type, weight) values('Страховка', 1, 1);
select id into catid from scoring_category where name = 'Страховка';
insert into scoring_factor (name, scoring_category, code) values('наличие страховки', catid, 'insurance');


insert into scoring_category (name, cat_type, weight) values('Состояние здоровья', 1, 1);
select id into catid from scoring_category where name = 'Состояние здоровья';	
insert into scoring_factor (name, scoring_category, code) values('Употребление наркоты', catid, 'pill_use');
insert into scoring_factor (name, scoring_category, code) values('Где установлен Имплант', catid, 'where_implant_install');
insert into scoring_factor (name, scoring_category, code) values('Ранения', catid, 'worse');
insert into scoring_factor (name, scoring_category, code) values('дамшоки', catid, 'dumpshock');
insert into scoring_factor (name, scoring_category, code) values('Клиническая смерть', catid, 'clinical_death');


end
$$
