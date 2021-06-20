create table if not exists hack_history
(
    id  serial  not null
	constraint hack_history_pk primary key,
	action   varchar(255),
	main integer,
	secondid integer,
	parameters varchar(1000)
);
alter table hack_history
    owner to backend;
	
update corporation_wallet set logo_url = 'https://storage.googleapis.com/billingfilestorage/ares.jpg' where alias = 'Ares Macrotechnology';
update corporation_wallet set logo_url = 'https://storage.googleapis.com/billingfilestorage/aztec.jpg' where alias = 'Aztechnology (ORO)';
update corporation_wallet set logo_url = 'https://storage.googleapis.com/billingfilestorage/saeder.jpg' where alias = 'Saeder-Krupp';
update corporation_wallet set logo_url = 'https://storage.googleapis.com/billingfilestorage/Spinrad.jpg' where alias = 'Spinrad Global (JRJ INT)';
update corporation_wallet set logo_url = 'https://storage.googleapis.com/billingfilestorage/Translatvia.jpg' where alias = 'TransLatvia';
update corporation_wallet set logo_url = 'https://storage.googleapis.com/billingfilestorage/EVO.jpg' where alias = 'EVO';
update corporation_wallet set logo_url = 'https://storage.googleapis.com/billingfilestorage/Horizon.jpg' where alias = 'Horizon';
update corporation_wallet set logo_url = 'https://storage.googleapis.com/billingfilestorage/wuxing.jpg' where alias = 'Wuxing';
update corporation_wallet set logo_url = 'https://storage.googleapis.com/billingfilestorage/RENRAKU.jpg' where alias = 'Renraku';
update corporation_wallet set logo_url = 'https://storage.googleapis.com/billingfilestorage/Mitsuhama.jpg' where alias = 'Mutsuhama';
update corporation_wallet set logo_url = 'https://storage.googleapis.com/billingfilestorage/Shiawase.jpg' where alias = 'Shiavase';
update corporation_wallet set alias = 'Sony' where name = 'Посольство Японии (Sony)';
update corporation_wallet set logo_url = 'https://storage.googleapis.com/billingfilestorage/sony.jpg' where alias = 'Sony';

