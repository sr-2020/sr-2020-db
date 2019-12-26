INSERT INTO game_system (id, name, existing_aspect_discount, main_aspect_cost, aux_aspect_cost, meta_affinity_huge, meta_affinity_small)
VALUES (1, 'Основная', 40, 0, 10, 0.10, 0.05)
ON CONFLICT (id)
    DO UPDATE SET name                     = EXCLUDED.name,
                  existing_aspect_discount = EXCLUDED.existing_aspect_discount,
                  main_aspect_cost         = EXCLUDED.main_aspect_cost,
                  aux_aspect_cost          = EXCLUDED.aux_aspect_cost,
                  meta_affinity_huge       = EXCLUDED.meta_affinity_huge,
                  meta_affinity_small      = EXCLUDED.meta_affinity_small;


-- aspect costs
INSERT INTO gs_aspect_cost (id, order_num, karma, game_system)
VALUES (1, 1, 0, 1)
ON CONFLICT (id)
    DO UPDATE SET order_num   = EXCLUDED.order_num,
                  karma       = EXCLUDED.karma,
                  game_system = EXCLUDED.game_system;

INSERT INTO gs_aspect_cost (id, order_num, karma, game_system)
VALUES (2, 2, 120, 1)
ON CONFLICT (id)
    DO UPDATE SET order_num   = EXCLUDED.order_num,
                  karma       = EXCLUDED.karma,
                  game_system = EXCLUDED.game_system;
