select * from eventlogs.event_mercadoshopsaction order by 1 desc;

select * from eventlogs.event_mercadoshopsaction where runid = '1859'  order by 1 desc;

select * from eventlogs.event_mercadoshopsaction where SeverityID > 2  and runid = 1859 and Subject != 'product list is none' and Subject != 'failedd to process product'  order  by 1 desc;

select * from eventlogs.event_mercadoshopsaction where  runid ='1793'  and subject like 'processing cate%' order  by 1 desc;

select * from eventlogs.event_mercadoshopsaction where SeverityID > 2 order  by 1 desc;
select * from eventlogs.event_mercadoshopsaction where EventID < 166334 order by 1 desc;


select * from zwei.mercado_category  order by 1 desc;

SELECT cate2_id, total_items FROM pri_zwei.mercado_category order by 1 desc;

select * from pri_zwei.mercado_category  where country_code = 'MLC' order by 1 desc;
select sum(total_items), country_code FROM pri_zwei.mercado_category where country_code != 'NULL' group by country_code order by 1 desc;

select * from pri_zwei.mercado_storeinfo order by 1 desc;



select * from mercado_product order by 1 desc;

insert into pri_zwei.mercado_shop_id (shop_id) select distinct shop_id from pri_zwei.mercado_product;
