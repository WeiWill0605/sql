select * from pr01.machinetrader_todo_list order by 1 desc;

select * from pr01.machinetrader_todo_list where rundate = '2018-11-21 08:01:09' order by 1 desc;

select count(1), rundate from pr01.machinetrader_product_stg group by rundate ;


# find category unprocessed 
select * from pr01.machinetrader_todo_list where  rundate = (select max(rundate) from pr01.machinetrader_todo_list )  and  (processed = 0  or result_count = -1);

# find category where result count not in page raw ----> may be category jump
select * from pr01.machinetrader_todo_list where rundate = (select max(rundate) from pr01.machinetrader_todo_list ) 
and locate(concat(result_count, ' Listings'), page_raw) = 0   order by 1 desc; 

# make sure result count matches between to do list and product stage
select  A.url, A.SEARCH_TYPE,  A.cat_name, A.result_count, (A.result_count - B.result_count_real) / A.result_count , B.* from 
(select * from pr01.machinetrader_todo_list where rundate = (select max(rundate) from pr01.machinetrader_todo_list )) as A 
left join
(select count(1) as result_count_real, CATEGORY_NAME, SEARCH_TYPE from pr01.machinetrader_product_stg
group by CATEGORY_NAME, SEARCH_TYPE)  as B 
on A.cat_name = B.CATEGORY_NAME and A.search_type = B.SEARCH_TYPE;

# detect count of null brand and null price
select sum(case when brand is null or brand='' then 1 else 0 end) as null_brand,
sum(case when PRICE_RAW is null or PRICE_RAW='' then 1 else 0 end) as null_price_raw
 from pr01.machinetrader_product_stg where rundate = (select max(rundate) from pr01.machinetrader_todo_list ) ;


select * from pr01.machinetrader_product_stg where brand is null and PRODUCT_NAME != 'Additional Items';
select count(1) from pr01.machinetrader_product_stg where brand is null and PRODUCT_NAME != 'Additional Items';

select count(1), count(distinct(sku)) from  pr01.machinetrader_product_stg where CATEGORY_NAME = 'Other' and SEARCH_TYPE = 'Auction Results';

select count(1), rundate from  pr01.machinetrader_product_stg where CATEGORY_NAME = 'Other' and SEARCH_TYPE = 'Auction Results' group by rundate;

select count(1), rundate from pr01.machinetrader_product_stg group by rundate ;

select * from  pr01.machinetrader_product_stg order by 1 desc;