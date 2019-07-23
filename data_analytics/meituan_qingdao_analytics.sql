
set @rundate_this_time_1 := '2018-08-03 06:01:07';
set @rundate_this_time_2 := '2018-08-04 06:01:09';


select * from meituan_restaurant where rundate = @rundate_this_time_1 and product_id in 
(select A.product_id from 
(
select distinct (product_id) as product_id from meituan_restaurant where rundate = @rundate_this_time_1) as A left join
(select distinct(product_id) as product_id from meituan_restaurant where rundate = @rundate_this_time_2) as B 
on A.product_id = B.product_id where B.product_id is null and A.product_id is not null);

select * from meituan_restaurant where rundate = @rundate_this_time_2 and product_id = '52608391';



select product_id,  max(product_title), max(product_solds), max(product_price),count(rest_id), max(city), @rundate_this_time from  meituan_restaurant 
 where rundate =  @rundate_this_time and product_id is not null group by product_id;
 
 select * from zwei.meituan_restaurant where product_id = '1951035';
 
 select * from meituan_restaurant_qingdao where rest_id = 178103873;