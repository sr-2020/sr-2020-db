do $$
begin
	if exists (select * from system_settings where key = 'shopwood') then
		update system_settings set value = '1' where key = 'wood';
	else
		insert into system_settings (key, value) values('shopwood', '1');
	end if;
	if exists (select * from system_settings where key = 'shopbronze') then
		update system_settings set value = '2' where key = 'shopbronze';
	else
		insert into system_settings (key, value) values('shopbronze', '2');
	end if;
	if exists (select * from system_settings where key = 'shopsilver') then
		update system_settings set value = '3' where key = 'shopsilver';
	else
		insert into system_settings (key, value) values('shopsilver', '3');
	end if;
	if exists (select * from system_settings where key = 'shopgold') then
		update system_settings set value = '4' where key = 'shopgold';
	else
		insert into system_settings (key, value) values('shopgold', '4');
	end if;
	if exists (select * from system_settings where key = 'shopplatinum') then
		update system_settings set value = '5' where key = 'shopplatinum';
	else
		insert into system_settings (key, value) values('shopplatinum', '5');
	end if;
	if exists (select * from system_settings where key = 'shopiridium') then
		update system_settings set value = '6' where key = 'shopiridium';
	else
		insert into system_settings (key, value) values('shopiridium', '6');
	end if;
end
$$