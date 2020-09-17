do $$
begin
	if exists (select * from system_settings where key = 'fixK') then
		update system_settings set value = '1' where key = 'fixK';
	else
		insert into system_settings (key, value) values('fixK', '1');
	end if;
	if exists (select * from system_settings where key = 'relativeK') then
		update system_settings set value = '1' where key = 'relativeK';
	else
		insert into system_settings (key, value) values('relativeK', '1');
	end if;

end
$$