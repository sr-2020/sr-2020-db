INSERT INTO metatype (id, name, description, karma)
VALUES (3, 'Эльф', '[+] Дешевые покупки
[+] Гибкость кодекса
[-] Меньше стартовой кармы', 30)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  karma       = EXCLUDED.karma;


INSERT INTO metatype (id, name, description, karma)
VALUES (2, 'Гном', '[+] Устойчивость к негативным последствиям токсинов/ядов.
[+] Устойчивость к истощению от заклинаний, биофидбеку при работе с матрицей/дронами, фейдингу техномантов
[-] Минус слот на имплант

', 0)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  karma       = EXCLUDED.karma;


INSERT INTO metatype (id, name, description, karma)
VALUES (1, 'Норм', '[+] Чувствительность к Матрице
[-] Слабость к токсинам и ядам', 0)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  karma       = EXCLUDED.karma;

INSERT INTO metatype (id, name, description, karma)
VALUES (4, 'Орк', '[+] 3 хита
[+] Хорошо взаимодействуют с духами
[+] Твердость кодекса', 0)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  karma       = EXCLUDED.karma;

INSERT INTO metatype (id, name, description, karma)
VALUES (5, 'Тролль', '[+] 3 хита, кожный панцирь
[+] Плюс слот на имплант
[+] Устойчивость к истощению от заклинаний, биофидбеку при работе с матрицей/дронами, фейдингу техномантов
[-] Меньше стартовой кармы.
[-] Требуют больше чипов еды', 30)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  karma       = EXCLUDED.karma;
