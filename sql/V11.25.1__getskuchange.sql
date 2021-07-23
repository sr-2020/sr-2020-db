-- FUNCTION: public.get_sku(integer)

-- DROP FUNCTION public.get_sku(integer);

CREATE OR REPLACE FUNCTION public.get_sku(
	shopid integer)
    RETURNS TABLE(skuid integer) 
    LANGUAGE 'sql'

    COST 100
    VOLATILE 
    ROWS 1000
AS $BODY$
	select id from sku 
		where corporation in 
			(select corporation 
			 	from contract c
			 	where c.shop = shopid
				and c.status in (2,3)
			)
		and enabled = true
		and nomenklatura in
		(
			select id from nomenklatura where specialisation in 
			(
				select specialisation from shop_specialisation where shop = shopid
			)
		)
$BODY$;

ALTER FUNCTION public.get_sku(integer)
    OWNER TO backend;

