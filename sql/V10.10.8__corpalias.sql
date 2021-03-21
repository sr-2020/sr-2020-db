alter table corporation_wallet add if not exists alias text null;
update corporation_wallet set alias = 'ares' where name = 'Ares Macrotechnolgy';
update corporation_wallet set alias = 'aztechnology' where name = 'Aztechnology (ORO)';
update corporation_wallet set alias = 'saederKrupp' where name = 'Saeder-Krupp';
update corporation_wallet set alias = 'spinradGlobal' where name = 'Spinrad Global (JRJ INT)';
update corporation_wallet set alias = 'neonet1' where name = 'NeoNet1 (TransLatviaSeledir)';
update corporation_wallet set alias = 'evo' where name = 'EVO';
update corporation_wallet set alias = 'horizon' where name = 'Horizon';
update corporation_wallet set alias = 'wuxing' where name = 'Wuxing';
update corporation_wallet set alias = 'russia' where name = 'Россия';
update corporation_wallet set alias = 'renraku' where name = 'Renraku';
update corporation_wallet set alias = 'mutsuhama' where name = 'Mutsuhama';
update corporation_wallet set alias = 'shiavase' where name = 'Shiavase';

