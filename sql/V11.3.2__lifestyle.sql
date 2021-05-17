alter table beat_history
    owner to backend;
alter table shop_wallet add column if not exists comment varchar(1000) null; 
alter table shop_wallet add column if not exists master varchar(100) null; 
