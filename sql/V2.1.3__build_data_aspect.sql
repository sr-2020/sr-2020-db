INSERT INTO aspect (name, description, is_primary, archetype)
VALUES ( 'СТРЕЛОК', 'предпочитает дистанционное оружие и чем скорострельней, тем лучше. Самый распространенный тип городского бойца. Хорош в массовом бою.'
       , true, 1)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  is_primary  = EXCLUDED.is_primary,
                  archetype   = EXCLUDED.archetype;

INSERT INTO aspect (name, description, is_primary, archetype)
VALUES ( 'ГРОМИЛА', 'боец, который ставит себе максимум имплантов, постепенно превращаясь в Железного Дровосека. Часто пользуется холодным оружием.'
       , true, 1)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  is_primary  = EXCLUDED.is_primary,
                  archetype   = EXCLUDED.archetype;
INSERT INTO aspect (name, description, is_primary, archetype)
VALUES ('Ассасин', 'способен на неожиданные удары в небоевой обстановке, но платит за это дорого. Ассасины предпочитают нестандартное легкое оружие (инд. допуск) и никогда не носят броню.'
           , false,
        1)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  is_primary  = EXCLUDED.is_primary,
                  archetype   = EXCLUDED.archetype;

INSERT INTO aspect (name, description, is_primary, archetype)
VALUES ( 'ПИЛОТ', 'управление дронами (тяжелая техника, легкие дроны). При прокачке сможет дольше находится в дроне и легче переносить биофидбек при повреждении дрона'
       , true, 2)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  is_primary  = EXCLUDED.is_primary,
                  archetype   = EXCLUDED.archetype;

INSERT INTO aspect (name, description, is_primary, archetype)
VALUES ( 'Инженер', 'продажа имплантов, дронов и кибердек.  Установка и снятие модов,  апгрейд, починка'
       , false, 2)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  is_primary  = EXCLUDED.is_primary,
                  archetype   = EXCLUDED.archetype;

INSERT INTO aspect (name, description, is_primary, archetype)
VALUES ( 'МЕДИК', 'продажа и исследование химических препаратов, тактическая медицинская поддержка, лечение ранений'
       , true, 2)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  is_primary  = EXCLUDED.is_primary,
                  archetype   = EXCLUDED.archetype;

INSERT INTO aspect (name, description, is_primary, archetype)
VALUES ('МЕНТАЛИСТ',
        'способен убедить кого угодно в чем угодно. Привет! Ты сейчас очень хочешь отдать мне вот этот мод. И два чипа вещества тоже. Еще надо отключить сигнализацию, ты очень мне поможешь, спасибо, благодарю',
        true, 3)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  is_primary  = EXCLUDED.is_primary,
                  archetype   = EXCLUDED.archetype;

INSERT INTO aspect (name, description, is_primary, archetype)
VALUES ('ГЕШЕФТМАХЕР', 'хотите дешево купить снаряжение в магазине или импланты в клинике? Получить больше денег за тот же самый контракт? Это сюда. Самый выгодный и коммерчески успешный аспект',
        true, 3)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  is_primary  = EXCLUDED.is_primary,
                  archetype   = EXCLUDED.archetype;

INSERT INTO aspect (name, description, is_primary, archetype)
VALUES ('Дискурсмонгер',
        'эксперт по Кодексам Чести. Политрук, шаман племени, второй человек после командира отряда. Он точно знает, какое поведение является правильным, какие действия полезны и за какое светлое будущее мы бьемся. И, конечно же, он знает - с кем бьемся и почему их надо ненавидеть',
        false, 3)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  is_primary  = EXCLUDED.is_primary,
                  archetype   = EXCLUDED.archetype;

INSERT INTO aspect (name, description, is_primary, archetype)
VALUES ('Адепт',
        'маг, который сражается в контактном бою. Пользуется легким холодным оружием, но за счет сил адепта, оружие становится смертоносным. Кроме того, адепты владеют навыком создания магических предметов (предметов со "вложенным" одноразовым заклинанием") и магических татуировок',
        false, 4)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  is_primary  = EXCLUDED.is_primary,
                  archetype   = EXCLUDED.archetype;

INSERT INTO aspect (name, description, is_primary, archetype)
VALUES ( 'ЗАКЛИНАТЕЛЬ', 'самый распространенный аспект магов. Файерболлы, молнии, магическое лечение — you name it. Магия. А еще они хороши при проведении ритуалов'
       , true, 4)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  is_primary  = EXCLUDED.is_primary,
                  archetype   = EXCLUDED.archetype;

INSERT INTO aspect (name, description, is_primary, archetype)
VALUES ( 'ПРИЗЫВАТЕЛЬ', 'специализируется на том, чтобы выстраивать отношения с духами: приручать их,  порабощать или изгонять. После чего может воплощать духа в реальный мир и пользоваться его силами.
Кроме того, эти маги могут считывать астральные следы и ауры живых существ и воздействовать на них'
       , true, 4)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  is_primary  = EXCLUDED.is_primary,
                  archetype   = EXCLUDED.archetype;

INSERT INTO aspect (name, description, is_primary, archetype)
VALUES ( 'КИБЕРАДЕПТ', 'техномант, специализируется на прямой атаке других техномантов и защите от них (моделируется с помощью боевых ситуаций и ЛАРП оружия)'
       , true, 5)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  is_primary  = EXCLUDED.is_primary,
                  archetype   = EXCLUDED.archetype;

INSERT INTO aspect (name, description, is_primary, archetype)
VALUES ( 'Техношаман', 'техномант, специалист по комплексным формам и спрайтам.'
       , false, 5)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  is_primary  = EXCLUDED.is_primary,
                  archetype   = EXCLUDED.archetype;

INSERT INTO aspect (name, description, is_primary, archetype)
VALUES ('ДЕКЕР',
        'фанат кибердеки и проводного подключения. Машинные коды, консольный интерфейс и первичные базы данных — их путь. А еще декеры могут переписывать и модифицировать данные. Да, часто это весьма незаконно. Такова жизнь, чаммер!',
        true, 5)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  is_primary  = EXCLUDED.is_primary,
                  archetype   = EXCLUDED.archetype;
