declare @dgcode varchar(10)

declare ins_cursor CURSOR for
select dg_code
	from dogovor where dg_filialkey = 37106 and dg_turdate > '20210406'

OPEN ins_cursor;
fetch NEXT from ins_cursor into @dgcode;
WHILE @@FETCH_STATUS = 0  
BEGIN 
insert into history (HI_DGCOD, HI_WHO, HI_TEXT, HI_MOD) values(@dgcode, 'Sokolova T.', 'Уважаемые коллеги! 
Информируем, что с 1.04 все Ваши заявки курирует офис в г. Москва. 
Необходимо заключить договор с  «Музенидис Москва»
Тел: 88002008822
Почта: tour@mzt.ru', 'MTC')
fetch NEXT from ins_cursor into @dgcode;
END


CLOSE ins_cursor;
DEALLOCATE ins_cursor;
