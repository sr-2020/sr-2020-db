INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (1, 1, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (1, 6, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (1, 7, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (1, 9, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (1, 11, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;


INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (1, 13, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;


INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (1, 15, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;


INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (2, 2, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (2, 4, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (2, 5, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;


INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (2, 8, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (2, 11, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (2, 12, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (2, 15, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (3, 3, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (3, 7, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (3, 8, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (3, 9, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (3, 10, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (3, 12, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (3, 14, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (4, 1, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (4, 4, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (4, 5, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (4, 9, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (4, 10, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (4, 11, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (4, 14, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (5, 2, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (5, 3, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (5, 5, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (5, 6, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (5, 12, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (5, 13, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO aspect_discount (metatype, aspect, kind)
VALUES (5, 14, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO public.aspect_discount (id, metatype, aspect, kind)
VALUES (36, 7, 15, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO public.aspect_discount (id, metatype, aspect, kind)
VALUES (37, 7, 1, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO public.aspect_discount (id, metatype, aspect, kind)
VALUES (38, 7, 2, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO public.aspect_discount (id, metatype, aspect, kind)
VALUES (39, 7, 3, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO public.aspect_discount (id, metatype, aspect, kind)
VALUES (40, 7, 10, 'huge')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO public.aspect_discount (id, metatype, aspect, kind)
VALUES (41, 7, 11, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO public.aspect_discount (id, metatype, aspect, kind)
VALUES (42, 7, 12, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO public.aspect_discount (id, metatype, aspect, kind)
VALUES (43, 7, 7, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;

INSERT INTO public.aspect_discount (id, metatype, aspect, kind)
VALUES (44, 7, 9, 'small')
ON CONFLICT (id)
    DO UPDATE SET metatype = EXCLUDED.metatype,
                  aspect   = EXCLUDED.aspect,
                  kind     = EXCLUDED.kind;
