
select * from pr01.machinetrader_todo_list  order by 1 desc;

select count(1), rundate from pr01.machinetrader_todo_list group by rundate  order by 2 desc;

select * from 
(select * from pr01.machinetrader_todo_list where rundate = '2018-10-12 08:55:43'   order by 1 desc) as A 
left join
(select * from pr01.machinetrader_todo_list where rundate = '2018-10-10 08:01:03'   order by 1 desc) as B 
on A.url = B.url where B.url is null;


select * from pr01.machinetrader_todo_list  where page_raw is not null and processed=0;


select * from pr01.machinetrader_todo_list where search_type = 'Equipment For Sale'  and cat1_name = 'Loader Backhoes'  order by 1 desc;
select * from pr01.machinetrader_todo_list where tid = 1753 order by 1 desc;
select count(1), rundate from pr01.machinetrader_todo_list  group by rundate order by 2 desc;

select count(1), rundate from pr01.machinetrader_product_stg where CATEGORY_NAME = 'Forklifts' group by rundate order by 1 desc;

select  tid, MINIMUM_PRICE, PRICE_RAW, PRODUCT_URL, source_url  from pr01.machinetrader_product_stg order by 1 desc;

select * from pr01.machinetrader_product_stg where source_url = 'https://www.machinerytrader.com/listings/construction-equipment/for-sale/list/category/1036/forklifts?SortOrder=26&scf=False&CTRY=USA&page=2&state=california' order by 1 desc;


select * from pr01.machinetrader_product order by 1 desc;
select  tid, MINIMUM_PRICE, PRICE_RAW, rundate, PRODUCT_URL, source_url, sku from pr01.machinetrader_product_stg where rundate = '2018-08-27 15:27:09' and  PRICE_RAW is null and locate('for-sale', source_url) > 0 ;


select count(1), rundate from pr01.machinetrader_product_stg group by rundate  order by 2 desc;

# delete from pr01.machinetrader_product_stg where rundate = '2018-08-27 15:27:09'

select count(1), CATEGORY_NAME from pr01.machinetrader_product_stg where rundate = '2018-08-26 14:09:18' group by CATEGORY_NAME;
select count(1), rundate from pr01.machinetrader_product_stg  where CATEGORY_NAME = 'Drills'  group by rundate order by 2 desc;


select * from pr01.machinetrader_product_stg order by 1 desc;



