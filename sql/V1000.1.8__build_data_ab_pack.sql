INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Бричер (декер)', 'Специалист по взлому систем хостов, преодоление Льда

* Абилки: Улучшение конверсии Intellect в Firewall. Команды: установка и обнаружение агентов, обнаружение уязвимостей Льда (дампы)
** Абилки: дополнительная конверсия Intellect в Firewall. Команды: деинсталяция агентов, ослабление Льда
*** Абилки: максимальная конверсия Intellect в Firewall, улучшенное обнаружение уязвимостей Льда', 60, 120, 180, 15, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Фенсер (декер)', 'Активное противодействие другим хакерам

* Абилки: Улучшение конверсии Intellect в Attack, ускорение входа на Хост. Команды:linklock
**  Абилки: дополнительная конверсия Intellect в Attack, дополнительное ускорение входа на хост.  Команды:автолинклок, атаки по ""железу"" противника, обнаружение других хакеров на хосте, получение информации о побежденном хакере
*** Абилки: максимальная конверсия Intellect в Attack, максимальное ускорение входа на хост. Команды: обнаружение хакеров на гриде', 60, 120, 180, 15, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Слай (декер)', 'Разведка, тихие операциям, обход IC и нестандартные решения

* Абилки: Улучшение конверсии Intellect в Sleaze, установка устойчивых к обновлению агентов. Команды:реактивация Льда
** Абилки: дополнительная конверсия Intellect в Attack, деплой скрытых агентов, удача, поиск скрытого. Команды: уход из линклока, прыжки на на "якоря" в Хосте, шансы обхода Льда без боя
***  Абилки: максимальная конверсия Intellect в Attack', 60, 120, 180, 15, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Шахтер (декер)', 'Правильно, конечно, датамайнер, но.. не прижилось в России. Работа API Контроля, чтение и модификация данных, неспециализированные системы контроля, манипуляции с SIN

* Абилки: Улучшение конверсии Intellect в DataProcessing, чтение данных.  Команды: useapi, file
** Абилки: дополнительная конверсия Intellect в DataProcessing, позволяет читать лучше данные, позволяет изменять данные. Команды: дополнительные ключи useapi, больше данных
*** Абилки: максимальная конверсия Intellect в DataProcessing, позволяет читать еще лучше данные, лучше изменять данные. Команды: дополнительные ключи useapi, больше данных, больше возможности изменения',
        60, 120, 180, 15, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Гуру (декер)', 'Знания и умения, которые делают хакера чем то большим, чем просто профи. Искра таланта, если угодно.
*  Абилки: Увеличение времени на хосте, большее количество защищаемых Хостов, задержка или ускорение публикаций CVE. Команды: вести партию за собой
** Абилки: Дополнительное увеличение времени на хосте, Еще большее количество защищаемых хостов, больше софта брать и выносить из рана, упрощение работы с CVE
*** Абилки: Максимальное время на хосте, дополнительное упрощение работы с CVE', 60, 120, 180, 15, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Шахтер (техношаман)', 'Правильно, конечно, датамайнер, но.. не прижилось в России. Работа с данным Контроля, чтение и модификация данных (неспециализированные системы контроля), Манипуляции с SIN

* Абилки: чтение данных, больше бэкдоров, бэкдоры живут еще дольше
** Абилки: позволяет читать лучше данные, позволяет изменять данные, еще больше бэкдоров, бэкдоры живут еще дольше, меньше лаг данных
*** Абилки: позволяет читать еще лучше данные, лучше изменять данные, максимум бэкдоров, максимум жизни бэкдоров, еще меньше лаг данных', 70, 140, 210, 14, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Бричер (техношаман)', 'Специалист по взлому систем хостов, преодоление Льда

* Абилки: применение спрайтов ур.1, реактивация Льда. КФ: Специальные КФ против конкретных видов Льда -1
** Абилки: Вход в Основание в среду, применение спрайтов ур.2  КФ: Специальные КФ против конкретных видов Льда -2, обман активного Льда, подсказка
*** Абилки: применение спрайтов ур.3.  КФ: Специальные КФ против конкретных видов Льда -3', 70, 140, 210, 14, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Ченнелер (техношаман)', 'Мастер сложных комплексных форм общего назначения, повелитель Резонанса

* Абилки: ослабление Вэрианса. КФ: прямой урон в красной комнате, VR-баффы, базовое лечение Матричного состояния
**  Абилки: Вход в Основание в среду, поиск скрытого, стойкость к Фейдингу, дополнительное увеличение времени на Хосте, установка агентов. КФ: прямой урон в красной комнате, VR-баффы, лечение Матричного состояния
***  Абилки: дополнительная стойкость к Фейдингу, дополнительное увеличение времени на Хосте. КФ: исцеление Матричного состояния, доп. возможности по установке агентов', 70, 140, 210, 14, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Шахтер (киберадепт)', 'Правильно, конечно, датамайнер, но.. не прижилось в России. Работа с данным Контроля, чтение и модификация данных (неспециализированные системы контроля), Манипуляции с SIN

* Абилки: чтение данных, больше бэкдоров, бэкдоры живут еще дольше
** Абилки: позволяет читать лучше данные, позволяет изменять данные, еще больше бэкдоров, бэкдоры живут еще дольше, меньше лаг данных
*** Абилки: позволяет читать еще лучше данные, лучше изменять данные, максимум бэкдоров, максимум жизни бэкдоров, еще меньше лаг данных', 60, 120, 180, 13, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Фенсер (киберадепт)', 'Мастерство противодействия техномантам в Основании

* Абилки: 1 Бондед Спрайт, ускорение входа на защиаемый хост, больше Матричного состояния, большее количество защищаемых Хостов, обнаружение хакеров на хосте.
** Абилки: 2 Бондед Спрайта, дополнительное ускорение входа на защиаемый хост, еще большее количество защищаемых Хостов, больше Матричного состояния, +1 "мясной" хит, обнаружение хакеров на гриде,устойчивость к прямому урону от КФ в красной комнате. КФ: получение информации о повердженном хакере
*** Абилки: 3 Бондед Спрайта, максимальное ускорение входа на защиаемый хост, доп. устойчивость к прямому урону от КФ в красной комнате', 60, 120, 180, 13, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Кондуктор (киберадепт)', '(от слова conduct, проводить. В отличии от channel, направлять. Киберадепты очень не любят это слэнговое слово)  Резонансные способности киберадептов. Профи в резонансных способностях.. хоть и не Ченнелер

* Абилки: установка агентов. КФ: базовые КФ
** Абилки: Вход в Основание в среду, применение спрайтов ур.1, стойкость к Фейдингу, увеличение времени на Хосте, доп. возможности установки и удаления агентов, удача.  КФ: VR-баффы-1,  Специальные КФ против конкретных видов Льда -1, базовое лечение Матричного состояния,
***  Абилки: дополнительная стойкость к Фейдингу, применение спрайтов ур.2, дополнительное увеличение времени на Хосте.  КФ: VR-баффы-2, Специальные КФ против конкретных видов Льда -2, лечение Матричного состояния, подсказка',
        60, 120, 180, 13, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Химик', 'Умеет анализировать состав препаратов и состояние пациента.
Способности "что в таблетке", "что в чаммере"
* Распознает самые крупные компоненты
** Распознает более тонкие компоненты
*** Распознает самые тонкие компоненты', 70, 140, 210, 6, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Пушер', 'можно заявить Аптеку. Может получить допуск к дешевой продаже препаратов оптом и редким препаратам.
* может продавать препараты
** может делать оптовые закупки по сниженной цене
*** может продавать редкие и уникальные препараты', 70, 140, 210, 6, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Боевой медик', 'Умеет эффективно пользоваться препаратами-аптечками (лечить + поднимать из тяжрана) и пользоваться медкартом.
* эффективное использование аптечек
** позволяет риггеру управлять дроном Медикарт
*** может устанавивать имплант MedKit (позволяет вставать из КС)', 70, 140, 210, 6, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Биоинженер', 'можно заявить Автодок. Умеет ставить импланты (альфа-бета-гамма, био)
способности "Биоинженерия"
* ставит простые киберимпланты
** умеет ставить сложные киберимпланты
*** умеет ставить биоимпланты', 80, 160, 240, 5, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Механик', 'можно заявить Мастерскую.  Может ставить моды на дроны и кибердеки.
способности "Тюнинг"
* ставит простые моды
** умеет чинить сломанные моды, дроны, деки
*** умеет ставить самые сложные моды', 80, 160, 240, 5, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Рипомен', 'Специалист по оперативному демонтажу. Умеет снимать импланты и моды в полевых условиях.
Способности "Было ваше - стало наше".
* умеет снимать простые моды \импланты
** умеет снимать более сложные
*** умеет снимать всё, кроме био', 80, 160, 240, 5, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Синхронизация', 'Способности,  которые позволяют риггеру дольше находиться в дроне, быстрее восстанавливаться после подключения и легче переносить биофидбек
* упрощает подключение и восстановление
** еще сильнее упрощает и улучшает
*** очень сильно упрощает и улучшает', 70, 140, 210, 4, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Air craft', 'Навыки которые позволяют риггеру управлять воздушными дронами. .
* коптеры
** проектор, камикадзе
*** вертолет', 80, 160, 240, 4, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Ground craft', 'Навыки которые позволяют риггеру управлять наземными дронами.
* бульдозер
** турель
*** экзоскелет', 80, 160, 240, 4, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Дистанционное оружие (навык)', 'Навык, который позволяет использовать дистанционное оружие
* автоматы (быстрая стрельба)
** снайперские винтовки (меткая стрельба)
*** пулеметы (стрельба из пулемета)', 60, 120, 180, 1, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Использование брони (стрелок)', 'Навык, который позволяет использовать броню
* усложняет вырезание имплантов рипоменами
** может пользоваться Легкой броней
*** может пользоваться Тяжелой броней', 70, 140, 210, 1, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Здоровеньки булы', 'Значительно ускоряет лечение и восстановление  и защищает импланты от рипоменов.
* усложняет вырезание имплантов рипоменами
** хиты в легком ранении восстанавливаются за 20 минут
*** если в тяжране не провели добивание за 3 минуты - сам встает из тяжрана. Через 30 минут падает в КС.', 60, 120, 180, 1, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Холодное оружие (навык)', 'Навык, который позволяет использовать холодное оружие
* дубинки
** мечи, топоры
*** двуручные мечи, топоры, молоты, дубины...', 60, 120, 180, 2, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Использование брони (громила)', 'Использование брони
* усложняет вырезание имплантов рипоменами
** может пользоваться Легкой броней
*** может пользоваться Тяжелой броней', 70, 140, 210, 2, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Крепкий и надежный', 'Повышает сопротивляемость химии, ментальным воздействиям и защищает импланты от рипоменов.
* усложняет вырезание имплантов рипоменами
** сопротивляеомсть проблемам от воздействия медицинских препаратов
*** сопротивляемость ментальным воздействиям', 60, 120, 180, 2, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Оружие ассасина (навык)', 'Навык, который позволяет использовать холодное и дистанционное оружие
* гранаты
** дубинки
*** мечи, топоры, автоматы', 60, 120, 180, 3, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Палач', 'Воздействия и удары в небоевой обстановке. Оглушения, допросы, эффективное добивание.
* Быстрое добивание. Сокращает перерыв между добиваниями в КС до 3 минут
** Оглушение. может оглушить персонажа
*** Допрос. Персонаж в тяжране обязан ответить на три вопроса правильно и полно.', 80, 160, 240, 3, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Мародер', 'Грабеж, разрушение, зачистка поля боя.
* Может снять чип (разрушить по игре) с оружия противника
** При добивании в КС получает часть денег добитого (10%)
*** Может снять чип (разрушить по игре) с брони противника', 80, 160, 240, 3, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Боец', '* сила рук (легкое холодное оружие считается тяжелым)
** создает себе временную легкую броню
*** может регенерировать, умеет сражаться с астральными сущностями', 80, 160, 240, 10, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Целитель', '* может лечить себя
** может лечить других и накладывать этические татуировки
*** может снимать этические татуировки и создавать себе временную тяжелую броню', 80, 160, 240, 10, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Артефактор', '* может создавать слабые артефакты (вкладывать заклинания)
** может эффективно участвовать в ритуальных заклинаниях, может  перезаряжать артефакты
***  может создавать сильные артефакты, в том числе артефакты для изгнания духов', 80, 160, 240, 10, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Астрал (заклинатель)', '* путешествия в астрале
** улучшенные путешествия в астрале
*** акула астрала', 30, 60, 90, 11, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Боевая магия', '* магические снаряды
** защита зонтиком, сопротивление откату
*** Массированные хитоснимания', 70, 140, 210, 11, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Защитная магия', '* лечение себя
** Лечение других, распугивание духов
*** начаровывание легкой брони, Массированный хитоподъем', 70, 140, 210, 11, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Симпатическая магия', '* Положительное влияние на других персонажей при прямом наложении заклинания.
** Простая симпатическая магия. Ускоренное восстановление после наложения заклинаний.
*** Продвинутая симпатическая магия.', 70, 140, 210, 11, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Астрал (призыватель)', '* путешествия в астрале
** улучшенные путешествия в астрале
*** акула астрала', 30, 60, 90, 12, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Астралог', '* Анализ астрального эха заклинаний, исследование ауры.
** Поиск по ауре, чтение астральных следов
*** Смена чужой ауры', 70, 140, 210, 12, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Пир духа', '* Овладение духом
** Управление дружелюбием духов
*** Изгнание духа', 70, 140, 210, 12, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Нити судьбы', '* Призыв духов
** Положительное влияние на чужие характеристики. Простая симпатическая магия
*** Отрицательное влияние на чужие характеристики. Управление маной. Массированная атака по астралу', 70, 140, 210, 12, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Это не те дроиды', 'Может заставить вас забыть то, что было или вспомнить то, чего никогда не было.
* убрать из памяти незначительный эпизод
** переписывает в памяти прошедшие события, может убрать из памяти значимый эпизод (включая ситуацию когда персонажу был нанесен физический вред)
*** дает возможность другому персонажу помнить события даже перед клинической смертью', 70, 140, 210, 7, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Бен, ай нид хелп', 'Ему не нужен пистолет, его доброе слово и так достаточно убедительно.
* может вывести на откровенный разговор, распознать ложь
** может заставить выполнить несложную просьбу или перевести немного денег.
*** может заставить персонажа оказать серьезную услугу, отдать в подарок игровую ценность.', 70, 140, 210, 7, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Назгул', 'Этот парень внушает ужас. Бегите, глупцы!
* страх, оцепенение
** паралич, разжигание ненависти (вызвать агрессию на определенного персонажа.)
*** массовый страх.', 70, 140, 210, 7, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Опа, шекель.', 'Специлист по прикладному вышибанию нюйен
* Пользуется скидками при покупках в магазинах
** Увеличение размера добычи при ране, может узнать стоимость чипа посмотрев на чип.
*** Большие скидки в магазинах. Покрути мои депозиты - может получать доход с денег. которые лежат на счету ГМ', 70, 140, 210, 8, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Фиксер', 'Манипуляции с договорами. Переоформление, возвраты, пересмотр договора на новый скоринг
* узнать подробности скоринга персонажа, переписать договор ренты с одного персонажа на другого (оба должны быть согласны)
** переоформить договор ренты на новый скоринг, оформить возврат товара и отмену договора
*** анонимизация банковских переводов', 70, 140, 210, 8, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Медиа мэн', 'Не бывает плохого и хорошего паблисити. Чем больше лайков - тем больше лайков!
* собирать компромат
** защищать от сбора компромата, быть всегда на связи
*** получать информацию о происходящем в мире.', 70, 140, 210, 8, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Имя нам легион', 'Умеет управлять размером этической группы (5 на старте)
* 9
** 13
*** 17', 80, 160, 240, 9, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Искусства легких касаний', 'Сопосбен доносить дискурс с помощью определенных умений. Уровень пакета добавляет воздействия из Гламура, Мимезиса, Мизоса. Эти умения позволяют членам группы зарабатывать больше кармы при выполнении этических действий.
*   навык воздействия с 1 формой
**  навык воздействия с 2 формами
*** навык воздействия с 3 формами', 80, 160, 240, 9, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;

INSERT INTO ability_pack (name, description, cost1, cost2, cost3, aspect, aspect2)
VALUES ('Нефть в обмен на продовольствие', 'Может поддерживать особые закрыте способности группы с требованиями по этике. (лечение -> милосердное лечение). Может принимать способности от персонажей в группу. Может подтверждать право участников группы на приобретение особых способностей.
* У группы 0 особых способностей + есть 1 свободный "слот" (можно принять одну способность)
** У группы 1 способность + есть 1 свободный "слот" (итого 2 слота)
*** У группы 1 способность + есть 2 свободных "слота" (итого 3 слота)', 80, 160, 240, 9, null)
ON CONFLICT (name)
    DO UPDATE SET name        = EXCLUDED.name,
                  description = EXCLUDED.description,
                  cost1       = EXCLUDED.cost1,
                  cost2       = EXCLUDED.cost2,
                  cost3       = EXCLUDED.cost3,
                  aspect      = EXCLUDED.aspect,
                  aspect2     = EXCLUDED.aspect2;
