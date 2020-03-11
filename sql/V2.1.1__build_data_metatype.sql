INSERT INTO metatype (name, description, cost)
VALUES ('Норм', '[+] Чувствительность к Матрице
[-] Слабость к токсинам и ядам', 0)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  cost        = EXCLUDED.cost,
                  hidden      = EXCLUDED.hidden;

INSERT INTO metatype (name, description, cost)
VALUES ('Гном', '[+] Устойчивость к негативным последствиям токсинов/ядов.
[+] Устойчивость к истощению от заклинаний, биофидбеку при работе с матрицей/дронами, фейдингу техномантов
[-] Минус слот на имплант

', 0)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  cost        = EXCLUDED.cost,
                  hidden      = EXCLUDED.hidden;

INSERT INTO metatype (name, description, cost)
VALUES ('Эльф', '[+] Дешевые покупки
[+] Гибкость кодекса
[-] Меньше стартовой кармы', 20)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  cost        = EXCLUDED.cost,
                  hidden      = EXCLUDED.hidden;

INSERT INTO metatype (name, description, cost)
VALUES ('Орк', '[+] 3 хита
[+] Хорошо взаимодействуют с духами
[+] Твердость кодекса', 0)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  cost        = EXCLUDED.cost,
                  hidden      = EXCLUDED.hidden;

INSERT INTO metatype (name, description, cost)
VALUES ('Тролль', '[+] 3 хита, кожный панцирь
[+] Плюс слот на имплант
[+] Устойчивость к истощению от заклинаний, биофидбеку при работе с матрицей/дронами, фейдингу техномантов
[-] Меньше стартовой кармы.
[-] Требуют больше чипов еды', 40)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  cost        = EXCLUDED.cost,
                  hidden      = EXCLUDED.hidden;

INSERT INTO metatype (name, description, cost, hidden)
VALUES ('HMHVV', 'Жертва HMHVV', 0, true)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  cost        = EXCLUDED.cost,
                  hidden      = EXCLUDED.hidden;

INSERT INTO metatype (name, description, cost, hidden)
VALUES ('Проекция AI', 'Одна из проекций AI', 20, true)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  cost        = EXCLUDED.cost,
                  hidden      = EXCLUDED.hidden;

INSERT INTO metatype (name, description, cost, hidden)
VALUES ('Дух', 'Резидент астрального мира, и гость в мире физическом', 0, true)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  cost        = EXCLUDED.cost,
                  hidden      = EXCLUDED.hidden;
