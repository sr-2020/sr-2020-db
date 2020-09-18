do $$
declare catid integer;
declare factorid integer;
begin
	if not exists (select * from scoring_category where name = 'credit_history') then
		insert into scoring_category (name, cat_type, weight) values('credit_history', 2, 1);
	end if;
	select id into catid from scoring_category where name = 'credit_history';
	
	if not exists (select * from scoring_factor where code = 'lschange') then
		insert into scoring_factor (name, scoring_category, code) values('lifestylechange', catid, 'lschange');
	end if;
	
	select id into factorid from scoring_factor where code = 'lschange';
	
	if exists (select * from system_settings where key = 'factor_lschange') then
		update system_settings set value = factorid where key = 'factor_lschange';
	else
		insert into system_settings (key, value) values('factor_lschange', factorid);
	end if;
end
$$


