SELECT * FROM zwei.mercado_category_mx order by 1 desc;
select * from zwei.mercado_product_mx order by 1 desc;

SELECT count(1), rundate  FROM zwei.mercado_category_mx group by rundate  order by 2 desc;
SELECT count(1), rundate  FROM zwei.mercado_product_mx group by rundate  order by 2 desc;
select count(distinct(product_id)) FROM zwei.mercado_product_mx;



select * from zwei.mercado_product_stage_mx order by 1 desc;
SELECT count(1), rundate  FROM zwei.mercado_product_stage_mx group by rundate  order by 2 desc;
select *  from zwei.mercado_product_stage_mx where rundate = '2018-08-03 17:11:02' and cate_id = 'MLM6144' ;
select * from zwei.mercado_product_stage_mx where brand_name = 'CHINA';

#delete from zwei.mercado_category_mx where rundate = '2018-07-18 16:51:49';


select * from zwei.mercado_category_mx where rundate = (select max(RunDate) from zwei.mercado_category_mx ) order by 1 desc;


#TRUNCATE `zwei`.`mercado_product_stage_mx`;

