do $$
begin
	if exists (select * from system_settings where key = 'defaultbalance') then
		update system_settings set value = '50' where key = 'defaultbalance';
	else
		insert into system_settings (key, value) values('defaultbalance', '50');
	end if;
end
$$