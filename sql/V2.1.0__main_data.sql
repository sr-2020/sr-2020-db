INSERT INTO authority (name)
VALUES ('ROLE_PLAYER');

INSERT INTO authority (name)
VALUES ('ROLE_MASTER');

INSERT INTO authority (name)
VALUES ('ROLE_CONFIG');

INSERT INTO authority (name)
VALUES ('ROLE_DEVELOP');

INSERT INTO public.game_system (
    name,
    aspect_cost,
    aux_aspect_cost,
    meta_affinity_huge,
    meta_affinity_small,
    archetype_cost,
    max_disadvantage,
    max_transfer,
    main_aspect_cost,
    def_max_archetypes,
    def_max_aspects,
    def_limit_karma)
VALUES ('Основная', 60, 10, 0.10, 0.05, 100, 70, 20, 0, 2, 2, 310);

INSERT INTO join_last_import (id, last_import)
VALUES (1, '2016-01-01 09:27:46.000000');
