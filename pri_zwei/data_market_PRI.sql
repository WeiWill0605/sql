SELECT * FROM zwei.data_market_product order by 1 desc;

SELECT * FROM zwei.data_market_product where platform = 'idata' order by 1 desc;

SELECT distinct(product_id) FROM zwei.data_market_product ;

select count(1), count(distinct(product_id)) FROM zwei.data_market_product;

SELECT count(1),  platform FROM zwei.data_market_product group by platform;


