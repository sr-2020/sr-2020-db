do $$
declare catid integer;
begin
select id into catid from scoring_category where name = 'Качество жизни';

insert into scoring_factor (name, scoring_category, code) values('Удаление импланта',catid,'implant_uninstalled');
insert into scoring_factor (name, scoring_category, code) values('Вырезание импланта',catid,'implant_deleted');

end
$$