
select sum(product_solds), sum(product_price * product_solds), poiid, max(restaurant_name),rundate  from pri_zwei.meituan_restaurant where poiid in 

(select poiid from meituan_rest_info where city = '青岛市' and cate_name like '%火锅%' and last_seen_date > '2018-06-21 09:09:17' )
group by poiid, rundate order by 2 desc
;


select count(distinct poiid), max(restaurant_name),product_title,product_price, product_solds from pri_zwei.meituan_restaurant 
where city = '青岛市' and rundate = '2018-06-27 09:01:05' group by concat(product_title,product_price, product_solds, cate_name, left(restaurant_name, 2)) having count( distinct poiid) > 1 order by 1 desc ;



select left('丹香（齐东路店）', 2);

select count(*) from pri_zwei.meituan_restaurant 
where city = '青岛市' and rundate = '2018-06-27 09:01:05' group by concat(product_title,product_price, product_solds, cate_name) having count( distinct poiid) > 1 order by 1 desc ;


select * from pri_zwei.meituan_restaurant where restaurant_name like '%彤德莱%' and city = '青岛市' and rundate = '2018-06-27 09:01:05';


select * from pri_zwei.meituan_restaurant where poiid in ('2526412', '1963430');

select * from pri_zwei.meituan_restaurant where   city = '青岛市' and rundate = '2018-06-27 09:01:05' and  product_title = '1000元代金券1张，可叠加'  ;









##insert into pri_zwei.meituan_rest_info (restaurant_name, cate_name, poiid, city, first_seen_date, last_seen_date) 
select max(restaurant_name), max(cate_name), poiid, max(city), '2018-06-27 09:01:05', '2018-06-27 09:01:05' from pri_zwei.meituan_restaurant
 where rundate = '2018-06-27 09:01:05' and poiid in 
(
select A.poiid as a_poiid  from ( select distinct poiid from pri_zwei.meituan_restaurant where rundate = '2018-06-27 09:01:05') as A
left join (select poiid from pri_zwei.meituan_rest_info ) as B on A.poiid = B.poiid where B.poiid is null 
) group by poiid;



### update last seen date
##update pri_zwei.meituan_rest_info set last_seen_date = '2018-06-27 09:01:05' where poiid in
(select A.poiid as a_poiid  from ( select distinct poiid from pri_zwei.meituan_restaurant where rundate = '2018-06-27 09:01:05') as A
left join (select poiid from pri_zwei.meituan_rest_info ) as B on A.poiid = B.poiid where B.poiid is not null
);


select * from pri_zwei.meituan_rest_info order by 1 desc;
select count(1), last_seen_date from pri_zwei.meituan_rest_info group by last_seen_date order by 2 desc;


### get rid of repeat store and product
select count(distinct poiid), max(restaurant_name),product_title,product_price, product_solds from pri_zwei.meituan_restaurant 
where rundate = '2018-06-27 09:01:05' group by concat(product_title,product_price, product_solds, cate_name, left(restaurant_name, 2)) having count( distinct poiid) > 1 order by 1 desc ;
