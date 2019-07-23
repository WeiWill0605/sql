select * from meituan_meishi_product_info order by 1 desc;
select count(1), rundate from meituan_restaurant group by rundate  order by 2 desc;



set @rundate_this_time1 := '2018-07-18 14:02:14', @rundate_this_time2 := '2018-07-25 09:01:06';

select C.rest_name, C.product_title, C.product_solds, C.address, C.rundate from 
(select * from meituan_restaurant where city = '青岛市' and rundate = @rundate_this_time1) as  C  join 
	(select A.rest_id from 
	(select distinct(rest_id) as rest_id  from meituan_restaurant where city = '青岛市' and rundate = @rundate_this_time1) as A  left join
	(select distinct(rest_id)  as rest_id from meituan_restaurant where city = '青岛市' and rundate = @rundate_this_time2) as B   
	on A.rest_id = B.rest_id where B.rest_id is null) as D     
    on C.rest_id = D.rest_id
 ;

