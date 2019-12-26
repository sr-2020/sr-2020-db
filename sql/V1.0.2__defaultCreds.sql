SET search_path TO public;
INSERT INTO user_login (password_hash, user_name, player)
VALUES ('$2a$10$y.SSQvWxSxrRFdr4NBtby.w8FviIxOGPiFwN73Mf3abq4OgoO.zB.', 'odmin', null);
INSERT INTO authority (name)
VALUES ('ROLE_ODMIN');
INSERT INTO user_authority (user_login, authority)
VALUES (1, 'ROLE_ODMIN');

