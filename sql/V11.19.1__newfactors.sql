do $$
declare catid integer;
begin
select id into catid from scoring_category where cat_type = 0;

update scoring_factor set name = 'Страховка(покупка)' where code = 'insurance';
delete from scoring_factor where code = 'ls_change';
insert into scoring_factor (name, scoring_category, code)
	values('Лайфстайл магазина', catid, 'shop_lifestyle');
insert into scoring_factor (name, scoring_category, code)
	values('добивание и мародерство', catid, 'finish_him');

end
$$

