create table if not exists passport
(
    id  serial  not null
	constraint passport_pk primary key,
	sin_text       varchar(255),
	person_name    varchar(255),
    metatype       integer constraint passport_metatype_fk references metatype on delete cascade,
    citizenship    varchar(255),
    mortgagee     varchar(255),
    viza           varchar(255),
	UNIQUE(sin_text)
);
alter table passport
    owner to backend;


alter table sin add COLUMN if not exist passport integer NULL 
	CONSTRAINT sin_passport_fk references passport(id);
	
alter table sin drop constraint IF EXISTS sin_metatype_fk;

alter table sin add COLUMN if not exist metatype_last integer NULL 
	CONSTRAINT sin_metatype_fk references metatype(id);
	
alter table sin add COLUMN if not exist citizenship_last integer NULL;
	
alter table sin add COLUMN if not exist mortgagee_last integer NULL;

alter table sin add COLUMN if not exist viza_last integer NULL;