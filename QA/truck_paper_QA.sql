
select * from pr01.truckpaper_todo_list order by 1 desc;

select count(1), rundate from pr01.truckpaper_product_stg group by rundate order by 2 desc;
select count(1), count(distinct(sku)) from truckpaper_product_stg;

# find category unprocessed 
select * from pr01.truckpaper_todo_list where  rundate = (select max(rundate) from pr01.truckpaper_todo_list ) and processed = 0;

# find category where result count not in page raw ----> may be category jump
select * from pr01.truckpaper_todo_list where rundate = (select max(rundate) from pr01.truckpaper_todo_list ) 
and locate(concat(result_count, ' Listings'), page_raw) = 0   order by 1 desc; 

# make sure result count matches  between to do list and product stage
select A.tid, A.url, A.conditions, A.SEARCH_TYPE,  A.cat_name, A.processed,A.result_count,(A.result_count - B.result_count_real) / A.result_count,  B.*from 
(select * from pr01.truckpaper_todo_list where rundate = (select max(rundate) from pr01.truckpaper_todo_list )) as A 
left join
(select count(1) as result_count_real, CATEGORY_NAME, SEARCH_TYPE, CONDITIONS from pr01.truckpaper_product_stg 
group by CATEGORY_NAME, SEARCH_TYPE, CONDITIONS)  as B 
on A.cat_name = B.CATEGORY_NAME and A.search_type = B.SEARCH_TYPE and A.conditions = B.conditions order by A.tid desc;

# detect count of null brand and null price
select sum(case when brand is null or brand='' then 1 else 0 end) as null_brand,
sum(case when PRICE_RAW is null or PRICE_RAW='' then 1 else 0 end) as null_price_raw
 from pr01.truckpaper_product_stg ;


select * from pr01.truckpaper_product_stg where BRAND is null and PRODUCT_NAME != 'Additional Items'; 
select count(1), CATEGORY_NAME, SEARCH_TYPE from pr01.truckpaper_product_stg where BRAND is null and PRODUCT_NAME != 'Additional Items' group by CATEGORY_NAME, SEARCH_TYPE;


select distinct BRAND from  pr01.truckpaper_product where RunDate >  DATE_ADD(now(), INTERVAL -20 DAY) and  CATEGORY_NAME = 'Other';
