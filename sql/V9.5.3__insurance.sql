do $$
declare insuranceid integer;

begin
	if not exists (select * from product_type where name = 'Страховка') then
		insert into product_type (name, discount_type, external_id) values('Страховка', 1, 0);
		
	select id into insuranceid from product_type where name = 'Страховка';
	
	if not exists (select * from system_settings where key = 'insuranceid') then
		insert into system_settings (key, value) values('insuranceid', insuranceid);
	end if;
	
end
$$


