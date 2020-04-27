UPDATE metatype
SET name = 'HMHVV тип 1',
    cost = 20
where name = 'HMHVV';

UPDATE metatype
SET cost = 0
where name = 'Проекция AI';

INSERT INTO metatype (name, description, cost, hidden)
VALUES ('HMHVV тип 3', 'HMHVV тип 3', 20, true)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  cost        = EXCLUDED.cost,
                  hidden      = EXCLUDED.hidden;

INSERT INTO metatype (name, description, cost, hidden)
VALUES ('eGhost', 'Цифровая жизнь', 0, true)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  cost        = EXCLUDED.cost,
                  hidden      = EXCLUDED.hidden;

INSERT INTO metatype (name, description, cost, hidden)
VALUES ('Другое', 'Другое', 0, true)
ON CONFLICT (name)
    DO UPDATE SET description = EXCLUDED.description,
                  cost        = EXCLUDED.cost,
                  hidden      = EXCLUDED.hidden;

delete
from aspect_discount
where metatype in (7, 8, 9, 10, 11);

--eGost
--ПИЛОТ
INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (10, 4, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;
--Фейсы, все
INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (10, 7, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (10, 8, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (10, 9, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

--Хакка все
INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (10, 13, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (10, 14, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (10, 15, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

--AI
--ПИЛОТ
INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (7, 4, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;
--Фейсы, все
INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (7, 7, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (7, 8, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (7, 9, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

--Хакка все
INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (7, 13, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (7, 14, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (7, 15, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

--hmhvv -1
--ДЕКЕР
INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (6, 15, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;
--файтер
INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (6, 1, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (6, 2, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (6, 3, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;
--маг
--адепт
INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (6, 10, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (6, 11, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (6, 12, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

--фейс
INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (6, 7, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (6, 9, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

--hmhvv -3
--ДЕКЕР
INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (9, 15, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;
--файтер
INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (9, 1, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (9, 2, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (9, 3, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;
--маг
--адепт
INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (9, 10, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (9, 11, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (9, 12, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

--фейс
INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (9, 7, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (9, 9, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

--дух 8
--Асса
INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (8, 3, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

--фейсы
INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (8, 7, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (8, 8, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (8, 9, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

--маги
INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (8, 10, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (8, 11, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (8, 12, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;
