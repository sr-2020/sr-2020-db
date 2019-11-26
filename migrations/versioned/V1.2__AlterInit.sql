ALTER TABLE IF EXISTS sin 
DROP COLUMN IF EXISTS role;

ALTER TABLE IF EXISTS geoposition 
DROP COLUMN IF EXISTS sin;

ALTER TABLE IF EXISTS geoposition 
ADD COLUMN sin int  not null constraint geoposition_sin_id_fk references sin (id);