create table if not exists ai
  (
    id   serial not null constraint ai_pk primary key,
    name varchar(255),
    join_group int
  );

alter table ai owner to backend;

INSERT INTO ai (id, name, join_group) VALUES (DEFAULT, 'Акс Эс Грант', 13506);
INSERT INTO ai (id, name, join_group) VALUES (DEFAULT, 'Деррик Оуэн Слаттери', 13503);
INSERT INTO ai (id, name, join_group) VALUES (DEFAULT, 'Трофим Алкобода', 13502);
INSERT INTO ai (id, name, join_group) VALUES (DEFAULT, 'Флетчер Бисселл', 13504);
INSERT INTO ai (id, name, join_group) VALUES (DEFAULT, 'Универсальный гештальт', 99999);
INSERT INTO ai (id, name, join_group) VALUES (DEFAULT, 'Мастерский AI для отладки', 99998);

create table backdoor_source
  (
    id        serial        not null constraint backdoor_source_pk primary key,
    name      varchar(255),
    per_cycle int default 0 not null,
    available int default 0 not null
  );

alter table backdoor_source owner to backend;
