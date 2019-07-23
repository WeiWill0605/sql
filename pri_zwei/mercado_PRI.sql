SELECT count(1),rundate  FROM pri_zwei.mercado_stores group by rundate order by 2 desc ;







## store_info
SELECT *  FROM pri_zwei.mercado_storeinfo order by 1 desc;
SELECT count(1),rundate  FROM pri_zwei.mercado_storeinfo group by rundate order by 2 desc ;
SELECT *  FROM pri_zwei.mercado_storeinfo where site_id is null  order by 1 desc ;




### category
select * from pri_zwei.mercado_category order by 1 desc;
select * from pri_zwei.mercado_category where cate_id = 'MLB115455';
select max(RunDate) from pri_zwei.mercado_category ;
select * from pri_zwei.mercado_category   where rundate = (select max(RunDate) from pri_zwei.mercado_category) order by 1 desc;
SELECT count(1),rundate  FROM pri_zwei.mercado_category group by rundate order by 2 desc ;
select sum(total_items) from pri_zwei.mercado_category where rundate = '2018-06-15 17:07:01' order by 1 desc;









## product
select * from mercado_product order by 1 desc;
select * from mercado_product_stage order by 1 desc;

select * from mercado_product  where product_currency != 'BRL' ;
select * from mercado_product  where brand_name = 'Novo';
select * from mercado_product where shop_id = '9232101';

select count(distinct product_id) from mercado_product ;
select count(distinct cate_id) from mercado_product ;
select count(1) from mercado_product order by 1 desc;

select count(1), rundate  from mercado_product group by rundate  order by 2 desc;

select count(distinct shop_id) from mercado_product ;

select distinct shop_id from mercado_product;



## shop id 
select count(1), processed from pri_zwei.mercado_shop_id group by processed;

select * from pri_zwei.mercado_shop_id where processed = -1 ;



