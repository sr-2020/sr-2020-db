INSERT INTO archetype (name, description)
VALUES ('Самурай', 'Специалист по боевым операциям')
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description;

INSERT INTO archetype (name, description)
VALUES ('Риггер', 'Специалист по управлению дронами')
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description;

INSERT INTO archetype (name, description)
VALUES ('Фейс', 'Специалист по социальным взаимодействиям')
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description;

INSERT INTO archetype (name, description)
VALUES ('Маг', 'Специалист по магии')
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description;

INSERT INTO archetype (name, description)
VALUES ('Хакер', 'Специалист по Матрице')
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description;

