select * from zwei.mercado_category_ve order by 1 desc;



select * from zwei.mercado_product_stage_ve order by 1 desc;


select count(1), rundate from zwei.mercado_product_stage_ve group by rundate order by 2 desc;