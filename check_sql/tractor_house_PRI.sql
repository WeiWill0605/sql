select * from pr01.tractorhouse_todo_list order by 1 desc;

select count(1), rundate from pr01.tractorhouse_todo_list  group by rundate  order by 2 desc;

select * from pr01.tractorhouse_todo_list where url = 'https://www.tractorhouse.com/listings/other-items/auction-results/list/category/40050?SortOrder=189&scf=False&CTRY=USA' order by 1 desc;


select * from pr01.tractorhouse_product_stg where length(phone) > 15 order by 1 desc;

select * from pr01.tractorhouse_product_stg  order by 1 desc;

select count(1), rundate  from pr01.tractorhouse_product_stg group by rundate  order by 2 desc;

select PRODUCT_URL, MINIMUM_PRICE, sku from pr01.tractorhouse_product_stg where rundate = '2018-08-23 09:06:42' order by MINIMUM_PRICE  desc;

select  source_url, PRODUCT_URL, MINIMUM_PRICE, sku from pr01.tractorhouse_product_stg where rundate = '2018-08-23 09:06:42' and MINIMUM_PRICE is null and locate('for-sale', PRODUCT_URL) = 0;



select * from pr01.tractorhouse_product where rundate = '2018-09-06 09:12:52' and phone is  null order by 1 desc;