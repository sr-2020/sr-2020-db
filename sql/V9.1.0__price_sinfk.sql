alter table price add column if not exists sin integer not null default(1659)
	constraint price_sin_fk references sin(id);