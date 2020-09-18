do $$
declare testcatid integer;
declare testfactorid integer;
begin
	if not exists (select * from scoring_category where name = 'test') then
		insert into scoring_category (name, cat_type, weight) values('test', 0, 0);
	end if;
	select id into testcatid from scoring_category where name = 'test';
	
	if not exists (select * from scoring_factor where code = 'test') then
		insert into scoring_factor (name, scoring_category, code) values('test', testcatid, 'test');
	end if;
	
	select id into testfactorid from scoring_factor where code = 'test';
	
	if exists (select * from system_settings where key = 'factor_test') then
		update system_settings set value = testfactorid where key = 'factor_test';
	else
		insert into system_settings (key, value) values('factor_test', testfactorid);
	end if;
end
$$


