do $$
declare catid integer;
begin
select id into catid from scoring_category where name = 'Качество жизни';

insert into scoring_factor (name, scoring_category, code) values('Наличие страховки',catid,'insurance_change');


end
$$