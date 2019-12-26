INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Проблемы хакеров', 'Неспособность держать коннект в матрице, тяжелые последствия после подключения, особое внимание GOD, особое внимание корпораций, перенесенные дамп-шоки', -20, -40, -60,
        true, 5)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Проблемы риггеров', 'Тяжелые последствия после подключения в дрона, шанс повредить пациенту при лечении, шанс сломать мод при установке \ снятии ...', -20, -40, -60, true, 2)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Проблемы самураев', 'Отторжение хрома (его проще вырезать), чувствительность к химоте (уменьшает порог кризисного эффекта), ...', -20, -40, -60, true, 1)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Проблемы магов',
        'К магу плохо относятся духи, кому-то известна аура персонажа, откат сильнее бьет по магу, неэффективно тратятся реагенты, сложности при входе в астрал и астральных путешествиях', -20, -40,
        -60, true, 4)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Проблемы фейсов', 'Увеличенное время восстановления после использования способностей, уменьшенный размер группы ДМ, хуже скидки ГМ, …', -20, -40, -60, true, 3)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Улучшенное снаряжение хакера', 'Чипы апгрейда к кибердеке, импланты, препараты улучшающие способности хакера, коллекция токенов-спрайтов, …', 20, 40, 60, false, 5)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Ценная информация хакера', 'коллекция SIN/хост, наличие бэкдоров, контакты по продаже CVE, известные уязвимости IC, ...', 20, 40, 60, false, 5)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Контроль - специализация', 'Специалист по базам/системам данных контроля.
Уровень пакета добавляет систему на выбор из экономика, имущество, геолокация, медицина и хром
*   навык с 1 системой Контроля
**  навык с 2 системами Контроля
*** навык с 3 системами Контроля', 30, 60, 90, false, 5)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Moar дронов!', 'Больше! Еще больше дронов! Дроны будут выбраны в соответствии с веткой навыков риггера  (Боевой медик \ Air Craft \ Ground Craft )
* медикарт ИЛИ коптеры (3 шт) ИЛИ бульдозер
** голопроектор ИЛИ камикадзе ИЛИ турель
*** вертолет ИЛИ экзоскелет', 20, 40, 60, false, 2)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Улучшенное снаряжение  риггера', 'Чипы апгрейда к дронам, препараты улучшающие способности риггера …', 20, 40, 60, false, 2)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Ценная информация риггера', 'Состав препаратов, эффективные комбинации, свойства веществ ...', 20, 40, 60, false, 2)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Импланты для брони', 'Укрепление систем организма, позволяющие носить Броню
* имплант "крепкая спина" - нужны для Средней брони
** имплант "усиленные кости" - нужен для Тяжелой брони
*** имплант "MedKit" - позволяет вставать из КС.', 20, 40, 60, false, 1)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Броня (снаряжение)', 'Может стартовать с броней выбранного типа
* получает запас аптечек
** легкая броня
*** тяжелая броня', 20, 40, 60, false, 1)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Импланты для оружия', 'Укрепление систем организма, позволяющие пользоваться Оружием
* одна обычная киберрука
** две обычные киберруки
*** одна магнитная киберрука (позволяет использовать гранаты)', 20, 40, 60, false, 1)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Дистанционное оружие (снаряжение)', 'Может стартовать с дистанционным оружием выбранного типа
* винтовка
** автомат или снайперская винтовка
*** пулемет', 20, 40, 60, false, 1)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Холодное оружие (снаряжение)', 'Может стартовать с холодным оружием выбранного типа
* дубинки
** мечи, топоры
*** двуручные мечи, топоры, молоты, дубины', 20, 40, 60, false, 1)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Улучшенное снаряжение мага', 'Сильные реагенты, артефакты, фокусы, гримуары, …', 20, 40, 60, false, 4)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Ценная информация мага', '* знание путей и аур некоторых духов
** знание некоторых путей маны, знание аур некоторых персонажей
*** знание о редких заклинаниях и способностях', 20, 40, 60, false, 4)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Улучшенное снаряжение фейса', 'Препараты,  улучшающие способности фейсов и позволяющие чаще их использовать.', 20, 40, 60, false, 3)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;

INSERT INTO archetype_feature (name, description, cost1, cost2, cost3, is_problem, archetype)
VALUES ('Ценная информация фейса',
        'Непубличный контракт с объявленной наградой. Информация по системе скоринга: что, кому и почему стоит дешевле\дороже и как это исправить. Компромат. Грязная информация о чужом имуществе. (кто пользуется не своим). Грязная информация о договорах. (кто заказывал определенный ран)',
        20, 40, 60, false, 3)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  is_problem  = EXCLUDED.is_problem,
                  archetype   = EXCLUDED.archetype;
