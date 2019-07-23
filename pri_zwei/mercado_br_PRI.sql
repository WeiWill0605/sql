
select * from zwei.mercado_category_br order by 1 desc;

select * from zwei.mercado_category_br where rundate = (select max(RunDate) from zwei.mercado_category_br ) and Processed = -1 order by 1 desc;
#update mercado_category_br set Processed = 1 where rundate = '2018-07-25 19:08:17' and Processed = '0'

select * from zwei.mercado_product_br order by 1 desc;
select * from zwei.mercado_product_br  where cate_id = 'MLB188060' order by 1 desc;
select * from zwei.mercado_product_br where sell_count != null order by 1 desc;
select count(1), rundate  from zwei.mercado_product_br group by rundate  order by 2 desc;

#delete from zwei.mercado_product_br where rundate = '2018-07-25 19:08:17' limit 100000;
select count(distinct(product_id)) from zwei.mercado_product_br;


select * from zwei.mercado_product_stage_br order by 1 desc;
select count(1), rundate  from zwei.mercado_product_stage_br group by rundate  order by 2 desc;

select *  from zwei.mercado_product_stage_br  where rundate = '2018-08-02 11:01:34' and cate_id = 'MLB108704' ;
select count(1), rundate  from zwei.mercado_product_stage_br group by rundate  order by 2 desc;




SELECT count(1), rundate FROM zwei.mercado_product_stage_br group by rundate  order by 2 desc;

select * from zwei.mercado_product_stage_br where sell_count > 0 order by product_price  desc;

select * from zwei.mercado_product_stage_br where cate_id = 'MLB108704' order by 1 desc;


# update mercado_category_br set Processed = 1 where  rundate = (select max(RunDate) from zwei.mercado_category_br ) 




