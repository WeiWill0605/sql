SELECT * FROM zwei.mercado_category_ar order by 1 desc;

select * from zwei.mercado_product_stage_ar order by 1 desc;

select count(1) from zwei.mercado_product_stage_ar order by 1 desc;
select count(1), rundate  from zwei.mercado_product_stage_ar group by rundate  order by 2 desc;
select count(distinct(product_id)) from zwei.mercado_product_stage_ar;