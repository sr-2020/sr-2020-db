alter table renta add column if not exists process_comment varchar(255) null;
do $$
begin
	if exists (select * from system_settings where key = 'block') then
		update system_settings set value = 'false' where key = 'block';
	else
		insert into system_settings (key, value) values('block', 'false');
	end if;
end
$$