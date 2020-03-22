alter table shop_wallet drop column id_foreign;
do $$
declare myid integer;
begin
	select id from wallet where wallet_type = 3 into myid;

	if not exists (select * from shop_wallet where name = 'testshop') then
		insert into shop_wallet(wallet, name, lifestyle) values(myid, 'testshop', 1);
	end if;
end
$$