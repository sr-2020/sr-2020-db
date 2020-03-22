do $$
begin
	if exists (select * from product_type where name = 'implant') then
		update product_type set name = 'имплант' where name = 'implant' ;
	end if;
end
$$