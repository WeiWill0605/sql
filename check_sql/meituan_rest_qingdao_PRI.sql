
select * from zwei.meituan_restaurant_qingdao order by 1 desc;

select count(1), rundate from zwei.meituan_restaurant_qingdao group by rundate order by  2 desc;


select count(1), week(RunDate) from zwei.meituan_restaurant_qingdao group by week(rundate) order by 1 desc;

select * from zwei.meituan_restaurant_qingdao where rest_name like '%蜀汉府%';
select * from zwei.meituan_restaurant_qingdao where  rest_id = 161617291 ;


select sum(product_price * product_solds), rundate from zwei.meituan_restaurant_qingdao where rest_id = '96682894' group by rundate order by 2 desc ;

select count(1), rundate from zwei.meituan_restaurant_qingdao where  rest_id = '96682894' group by rundate order by 2 desc;


select * from zwei.meituan_restaurant_qingdao where longitude > '120.161187' and longitude < '120.16792' and latitude > '35.92662' and latitude < '35.929678' order by 1 desc ;

select count(1), rundate from zwei.meituan_restaurant_qingdao where longitude > '120.161187' and longitude < '120.16792' and latitude > '35.92662' and latitude < '35.929678'
 group by rundate order by 2 desc ;

