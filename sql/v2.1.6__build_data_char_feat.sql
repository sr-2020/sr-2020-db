INSERT INTO character_feature (name, description, cost1, cost2, cost3, is_problem)
VALUES ('Лайфстайл',
        'Вложения в лайфстайл гарантируют вашему персонажу регулярный пассивный доход на игре, без регистрации и СМС. Shut up and take my nuyens! Да, этого точно хватит чтобы поесть и обеспечить развлечения.',
        70, 140, 210, false)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem;

INSERT INTO character_feature (name, description, cost1, cost2, cost3, is_problem)
VALUES ('Проблемы разнообразные', 'У персонажа есть тяжелый груз мрачного прошлого.
Например: открытый контракт на его голову; ворованное имущество; наркотическая зависимость, долг перед кем-то (не денежный), поддельный SIN;  ...', -10, -30, -50, true)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem;
