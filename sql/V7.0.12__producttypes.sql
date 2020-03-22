do $$
begin
	if not exists (select * from product_type where name = 'implant') then
		insert into product_type (name) values('implant');
	end if;

end
$$