INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (1, 1, 1, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (2, 1, 6, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (3, 1, 7, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (4, 1, 9, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (5, 1, 11, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;


INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (6, 1, 13, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;


INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (7, 1, 15, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;


INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (8, 2, 2, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (9, 2, 4, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (10, 2, 5, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;


INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (11, 2, 8, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (12, 2, 11, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (13, 2, 12, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (14, 2, 15, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (15, 3, 3, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (16, 3, 7, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (17, 3, 8, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (18, 3, 9, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (19, 3, 10, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (20, 3, 12, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (21, 3, 14, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (22, 4, 1, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (23, 4, 4, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (24, 4, 5, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (25, 4, 9, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (26, 4, 10, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (27, 4, 11, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (28, 4, 14, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (29, 5, 2, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (30, 5, 3, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (31, 5, 5, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (32, 5, 6, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (33, 5, 12, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (34, 5, 13, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (id, metatype, aspect, kind)
VALUES (35, 5, 14, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;
