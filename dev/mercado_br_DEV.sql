select * from eventlogs.event_mercadobraction order by 1 desc;

select * from eventlogs.event_mercadobraction where runid = 2889 and SeverityID > 2 order by 1 desc;


select * from zwei.mercado_category_br order by 1 desc;

#delete from zwei.mercado_category_br ;

select * from mercado_category_br where rundate = (select max(RunDate) from mercado_category_br) and processed = 0 order by 1 desc;

#update zwei.mercado_category_br set Processed = 1 where rundate =  (select Rundate from (select max(RunDate) as Rundate from zwei.mercado_category_br ) as A  ) and cate2_id =  'MLB3530';

 select * from zwei.mercado_category_br where rundate = (select Rundate from (select max(RunDate) as Rundate from zwei.mercado_category_br )as A ) and cate2_id =  'MLB3530'; 