INSERT INTO archetype (id, name, description)
VALUES (1, 'Самурай', 'Специалист по боевым операциям')
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description;


INSERT INTO archetype (id, name, description)
VALUES (2, 'Риггер', 'Специалист по управлению дронами')
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description;

INSERT INTO archetype (id, name, description)
VALUES (3, 'Фейс', 'Специалист по социальным взаимодействиям')
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description;

INSERT INTO archetype (id, name, description)
VALUES (4, 'Маг', 'Специалист по магии')
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description;

INSERT INTO archetype (id, name, description)
VALUES (5, 'Хакер', 'Специалист по Матрице')
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description;

