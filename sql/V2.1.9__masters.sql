DO
$$
    DECLARE
        lastid int;
    begin


        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'serggirt@gmail.com', 'Гирт', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'maywe.rem@gmail.com', 'Астера', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'yury.genin@gmail.com', 'Радомир', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'urfin13@gmail.com', 'Урфин', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'annathar7511@gmail.com', 'Пчёл', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_CONFIG');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'ilya.barkalov@gmail.com', 'RUSBAR', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_CONFIG');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'iskuzmin1989@gmail.com', 'Кузьмин', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'vasiliy.m.plotnikov@gmail.com', 'Себастьян', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'keltur77@gmail.com', 'Кельтур', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'Nginnn@gmail.com', 'Нджин', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_CONFIG');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'alexkrivda@gmail.com', 'Кривда', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_DEVELOP');
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_CONFIG');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'polina.s.17@gmail.com', 'Одиндиса', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'Murmail@gmail.com', 'Мэрфи', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'alexander.sanckin@gmail.com', 'Гном', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'xollodno@gmail.com', 'Алиса', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'blaze.teivil@gmail.com', 'Блэйз', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'ognestraz@gmail.com', 'Гуркалов', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'trechkalov@gmail.com', 'NtsDK', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'tandajuly@list.ru', 'Танда', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'mysh.iz.priliva@gmail.com', 'Александра', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_CONFIG');


        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'iwarpo@gmail.com', 'Варпо', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');

        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'y.elchanovich@gmail.com', 'Шэрра', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');

        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'ganabibidudu@mail.ru', 'Панда', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');

        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'kovalenkomaryana@gmail.com', 'Марьяна', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');

        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'vd.windinthesky@gmail.com', 'Ветер', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');

        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'ivansairess@gmail.com', 'Сайресс', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');


        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'bidjey@gmail.com', 'БГ', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_DEVELOP');
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_CONFIG');

        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'ArtyrmSergeev@gmail.com', 'Ксотар', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');

        INSERT INTO public.user_login (password_hash, login, name, locked)
        VALUES ('$2a$10$Za698Ft3.EsYe9aF0dSRVOEAy18pL4ja1A6VUJStbXbqaeQ45Fia6', 'A.Eremin.MSU@gmail.com', 'Ерёмин', true)
        RETURNING id INTO lastid;
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_MASTER');
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_DEVELOP');
        INSERT INTO public.user_authority (user_login, authority) VALUES (lastid, 'ROLE_CONFIG');


    END
$$
