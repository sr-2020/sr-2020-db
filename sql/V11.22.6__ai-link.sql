alter table if exists host add if not exists nuero_current  int default 0 not null;
alter table if exists host add if not exists neuro_gain     int default 0 not null;
alter table if exists host add if not exists neuro_limit    int default 0 not null;
alter table if exists host add if not exists neuro_gain_trail varchar(255);

create table if not exists neuro_settings
  (
    id             serial        not null constraint neuro_settings_pk primary key,
    gain_speed     int default 0 not null,
    spend_research int default 0 not null,
    transfer_amt   int           not null
  );

alter table neuro_settings owner to backend;

create table if not exists current_cycle
  (
    id      serial        not null,
    current int default 0 not null
  );

alter table if exists current_cycle owner to backend;

alter table character add if not exists ai int;
alter table character add constraint character_ai_id_fk foreign key (ai) references ai (id);
