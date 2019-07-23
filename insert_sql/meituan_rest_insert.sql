select * from meituan_restaurant order by 1 desc;


##declare rundate_this_time = '2018-07-04 15:53:53';

#select distinct(product_id) from pri_zwei.meituan_restaurant where rundate =  @rundate_this_time group by product_id order by 1 desc;

#insert into pri_zwei.meituan_meishi_product_info (product_id, product_title, product_solds, product_price, city, first_seen_date) 
select product_id,  max(product_title), max(product_solds), max(product_price), max(city), min(city), @rundate_this_time from  pri_zwei.meituan_restaurant 
 where  rundate =  @rundate_this_time and product_id is not null group by product_id;
 
 


set @rundate_this_time := '2018-07-04 15:53:53';
#select * from pri_zwei.meituan_restaurant where rundate = @rundate_this_time;

#insert into meituan_meishi_product_info(product_id, product_title, product_solds, product_price, rest_count, city, rundate)
select product_id,  max(product_title), max(product_solds), max(product_price),count(rest_id), max(city), @rundate_this_time from  meituan_restaurant 
 where rundate =  @rundate_this_time and product_id is not null group by product_id;
 

   
select * from meituan_meishi_product_info order by 1 desc;
 

