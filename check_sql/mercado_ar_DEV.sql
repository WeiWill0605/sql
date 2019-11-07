select * from eventlogs.event_mercadoaraction  order by 1 desc;
select * from eventlogs.event_mercadoaraction where jobid = 7034300 order by 1 desc;

select * from eventlogs.event_mercadoaraction where runid = 2296 and SeverityID > 2 order by 1 desc; 
select * from eventlogs.event_mercadoaraction where Subject like '%processing cate%' order by 1 desc;
SELECT * FROM zwei.mercado_category_ar order by 1 desc;

select * from zwei.mercado_product_stage_ar order by 1 desc;


update mercado_category_ar set Processed = 1 where rundate =  (select Rundate from (select max(RunDate) as Rundate from mercado_category_ar ) as A  ) and cate2_id = 'MLA3530' and Processed = 0