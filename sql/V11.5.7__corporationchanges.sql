update corporation_wallet set alias = 'Ares Macrotechnology' where name = 'Ares Macrotechnolgy';
update corporation_wallet set alias = 'Aztechnology (ORO)' where name = 'Aztechnology (ORO)';
update corporation_wallet set alias = 'Saeder-Krupp' where name = 'Saeder-Krupp';
update corporation_wallet set alias = 'Spinrad Global (JRJ INT)' where name = 'Spinrad Global (JRJ INT)';
update corporation_wallet set alias = 'TransLatvia' where name = 'NeoNet1 (TransLatviaSeledir)';
update corporation_wallet set alias = 'EVO' where name = 'EVO';
update corporation_wallet set alias = 'Horizon' where name = 'Horizon';
update corporation_wallet set alias = 'Wuxing' where name = 'Wuxing';
update corporation_wallet set alias = 'Россия' where name = 'Россия';
update corporation_wallet set alias = 'Renraku' where name = 'Renraku';
update corporation_wallet set alias = 'Mutsuhama' where name = 'Mutsuhama';
update corporation_wallet set alias = 'Shiavase' where name = 'Shiavase';
update corporation_wallet set alias = 'Zurich-Orbital' where name = 'Цюрих-Орбиталл';
insert into wallet(id, balance, wallet_type) values(nextval('wallet_id_seq'), 0, 2);
insert into corporation_wallet(wallet, name, owner, alias) values(currval('wallet_id_seq'), 'Omnistar', 0,'Omnistar');









