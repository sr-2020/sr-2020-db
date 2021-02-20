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
			 	from contract 
			 	where shop = shopid
			)
		and count > 0
		and enabled = true
		and nomenklatura in
		(
			select id from nomenklatura where id in
			(
				select nomenklatura from specialisation where shop = shopid
			)
		)
$BODY$;

ALTER FUNCTION public.get_sku(integer)
    OWNER TO backend;
