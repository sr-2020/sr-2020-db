	if exists (select * from system_settings where key = 'wood') then
		update system_settings set value = '100' where key = 'wood';
	else
		insert into system_settings (key, value) values('wood', '100');
	end if;
	if exists (select * from system_settings where key = 'bronze') then
		update system_settings set value = '200' where key = 'bronze';
	else
		insert into system_settings (key, value) values('bronze', '200');
	end if;
	if exists (select * from system_settings where key = 'silver') then
		update system_settings set value = '300' where key = 'silver';
	else
		insert into system_settings (key, value) values('silver', '300');
	end if;
	if exists (select * from system_settings where key = 'gold') then
		update system_settings set value = '400' where key = 'gold';
	else
		insert into system_settings (key, value) values('gold', '400');
	end if;
	if exists (select * from system_settings where key = 'platinum') then
		update system_settings set value = '500' where key = 'platinum';
	else
		insert into system_settings (key, value) values('platinum', '500');
	end if;
	if exists (select * from system_settings where key = 'iridium') then
		update system_settings set value = '600' where key = 'iridium';
	else
		insert into system_settings (key, value) values('iridium', '600');
	end if;