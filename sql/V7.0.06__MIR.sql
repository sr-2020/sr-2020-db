do $$
declare myid integer;
begin
if not EXISTS  (select * from wallet where wallet_type = 3) then
	insert into wallet(balance, wallet_type)
		values(100000000, 3)
		RETURNING id INTO myid;
	if exists (select * from system_settings where key = 'MIR_ID') then
		update system_settings set value = myid where key = 'MIR_ID';
	else
		insert into system_settings (key, value) values('MIR_ID', myid);
	end if;
end if;
end
$$

