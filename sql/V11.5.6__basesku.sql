alter table nomenklatura drop column secret;
alter table sku add column sku_base_price integer null;
alter table sku add column sku_base_count integer null;