	
alter table sin DROP COLUMN IF EXISTS citizenship_last;
alter table sin DROP COLUMN IF EXISTS mortgagee_last;
alter table sin DROP COLUMN IF EXISTS viza_last;
	
alter table sin add COLUMN if not exists citizenship_last integer NULL;
	
alter table sin add COLUMN if not exists mortgagee_last integer NULL;

alter table sin add COLUMN if not exists viza_last integer NULL;


ALTER TABLE sin 
DROP COLUMN IF EXISTS sin_text;

ALTER TABLE sin 
DROP COLUMN IF EXISTS person_name;

ALTER TABLE sin 
DROP COLUMN IF EXISTS metatype;

ALTER TABLE sin 
DROP COLUMN IF EXISTS citizenship;

ALTER TABLE sin 
DROP COLUMN IF EXISTS mortgagee;

ALTER TABLE sin 
DROP COLUMN IF EXISTS viza;

ALTER TABLE sin 
DROP COLUMN IF EXISTS nation;

ALTER TABLE sin 
DROP COLUMN IF EXISTS nation_display;

ALTER TABLE sin 
DROP COLUMN IF EXISTS citizen_state;

ALTER TABLE sin 
DROP COLUMN IF EXISTS ikar;

ALTER TABLE sin 
DROP COLUMN IF EXISTS last_income;

ALTER TABLE sin 
DROP COLUMN IF EXISTS last_outcome;

ALTER TABLE sin 
DROP COLUMN IF EXISTS mt_old;
