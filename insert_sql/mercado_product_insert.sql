
### mx
set @rundateThisTime := '2018-08-03 17:11:02';
#####insert into zwei.mercado_product_mx (`cate_id`, `product_id`, `cate_id_product`, `product_name`, `brand_name`, `brand_id`, `shop_id`, `product_price`, `product_original_price`, `sell_count`, `rate_count`, `rate`, `RunID`, `RunDate`, `InsertUpdateTime`) 
select `cate_id`, `product_id`, `cate_id_product`, `product_name`, `brand_name`, `brand_id`, `shop_id`, `product_price`, `product_original_price`, `sell_count`, `rate_count`, `rate`, `RunID`,
 @rundateThisTime, `InsertUpdateTime` 
from zwei.mercado_product_stage_mx where rundate = @rundateThisTime order by InsertUpdateTime asc;

set @rundateThisTime := '2018-08-03 17:11:02';
#insert into zwei.agg_mercado_brand_mx (`cate1_id`, `cate1_name`, `cate2_id`, `cate2_name`, `brand_name`, `GMV`, `volume`, `avg_price`, `max_price`, `min_price`, `RunDate`)
select A.cate1_id, A.cate1_name, A.cate2_id, A.cate2_name, B.brand_name, B.GMV, B.volumn, B.avg_price, B.max_price, 
B.min_price, @rundateThisTime from 
#select count(1) from 
(select * from zwei.mercado_category_mx where rundate = (select max(RunDate) from mercado_category_mx )) as A  join
(select cate_id, brand_name, sum(product_price * sell_count) as GMV, sum(sell_count) as volumn, max(product_price) as max_price, min(product_price) as min_price, null as avg_price
  from zwei.mercado_product_stage_mx where rundate in (@rundateThisTime) and sell_count > 0 and product_price < 200000  group by cate_id, brand_name) as B
  on A.cate2_id = B.cate_id
  ;



### br
set @rundateThisTime = '2018-08-09 12:12:24';
select * from zwei.mercado_product_br order by 1 desc;
#####insert into zwei.mercado_product_br (`cate_id`, `product_id`, `cate_id_product`, `product_name`, `brand_name`, `brand_id`, `shop_id`, `product_price`, `product_original_price`, `sell_count`, `rate_count`, `rate`, `RunID`, `RunDate`, `InsertUpdateTime`) 
select `cate_id`, `product_id`, `cate_id_product`, `product_name`, `brand_name`, `brand_id`, `shop_id`, `product_price`, `product_original_price`, `sell_count`, `rate_count`, `rate`, `RunID`,
 '2018-08-09 12:12:24', `InsertUpdateTime` 
from zwei.mercado_product_stage_br where rundate = '2018-08-09 12:12:24';

set @rundateThisTime := '2018-08-09 12:12:24';
insert into zwei.agg_mercado_brand_br (`cate1_id`, `cate1_name`, `cate2_id`, `cate2_name`, `brand_name`, `GMV`, `volume`, `avg_price`, `max_price`, `min_price`, `RunDate`)

select A.cate1_id, A.cate1_name, A.cate2_id, A.cate2_name, B.brand_name, B.GMV, B.volumn, B.avg_price, B.max_price, B.min_price, @rundateThisTime from 
#select count(1) from 
(select * from zwei.mercado_category_br where rundate = (select max(RunDate) from mercado_category_br )) as A  join
(select cate_id, brand_name, sum(product_price * sell_count) as GMV, sum(sell_count) as volumn, max(product_price) as max_price, min(product_price) as min_price, null as avg_price
  from zwei.mercado_product_stage_br where rundate = @rundateThisTime and sell_count > 0 and product_price < 200000  group by cate_id, brand_name) as B
  on A.cate2_id = B.cate_id
  ;

##TRUNCATE `zwei`.`mercado_product_stage_br`;




### ar
set @rundateThisTime := '2018-08-08 11:40:24';
#####insert into zwei.mercado_product_ar (`cate_id`, `product_id`, `cate_id_product`, `product_name`, `brand_name`, `brand_id`, `shop_id`, `product_price`, `product_original_price`, `sell_count`, `rate_count`, `rate`, `RunID`, `RunDate`, `InsertUpdateTime`) 
select `cate_id`, `product_id`, `cate_id_product`, `product_name`, `brand_name`, `brand_id`, `shop_id`, `product_price`, `product_original_price`, `sell_count`, `rate_count`, `rate`, `RunID`,
 @rundateThisTime, `InsertUpdateTime` 
from zwei.mercado_product_stage_ar where rundate = @rundateThisTime order by InsertUpdateTime asc;

set @rundateThisTime := '2018-08-08 11:40:24';
#insert into zwei.agg_mercado_brand_ar (`cate1_id`, `cate1_name`, `cate2_id`, `cate2_name`, `brand_name`, `GMV`, `volume`, `avg_price`, `max_price`, `min_price`, `RunDate`)
select A.cate1_id, A.cate1_name, A.cate2_id, A.cate2_name, B.brand_name, B.GMV, B.volumn, B.avg_price, B.max_price, 
B.min_price, @rundateThisTime from 
#select count(1) from 
(select * from zwei.mercado_category_ar where rundate = (select max(RunDate) from mercado_category_ar )) as A  join
(select cate_id, brand_name, sum(product_price * sell_count) as GMV, sum(sell_count) as volumn, max(product_price) as max_price, min(product_price) as min_price, null as avg_price
  from zwei.mercado_product_stage_ar where rundate in (@rundateThisTime) and sell_count > 0 and product_price < 200000  group by cate_id, brand_name) as B
  on A.cate2_id = B.cate_id
  ;











