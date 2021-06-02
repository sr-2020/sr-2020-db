do $$
declare catid integer;
begin
select id into catid from scoring_category where name = 'Качество жизни';
insert into scoring_factor (name, scoring_category, code) values('Дроны(покупка)',catid,'buy_drone');
insert into scoring_factor (name, scoring_category, code) values('Матричный предмет(покупка)',catid,'buy_matrix');
end
$$