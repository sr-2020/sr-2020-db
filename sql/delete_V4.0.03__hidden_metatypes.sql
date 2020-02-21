INSERT INTO metatype (name, description, cost, hidden)
VALUES ('HMHVV', 'Жертва HMHVV', 0, true)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  cost        = EXCLUDED.cost,
                  hidden      = EXCLUDED.hidden;

INSERT INTO metatype (name, description, cost, hidden)
VALUES ('Проекция AI', 'Одна из проекций AI', 0, true)
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
