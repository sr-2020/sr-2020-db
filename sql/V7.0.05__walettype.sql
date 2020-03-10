alter table wallet
	add column if not exists wallet_type integer not null;