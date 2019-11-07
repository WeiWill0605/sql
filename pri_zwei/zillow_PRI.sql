SELECT * FROM int_share_01.zillow  order by 1 desc;

SELECT * FROM int_share_01.zillow order by RunDate asc limit 1;
SELECT * FROM int_share_01.zillow_bk20190819 where  property_id = '2093410787'   limit 1;

SELECT * FROM int_share_01.zillow where property_type = 'Vacant Land' order by 1 desc;



select count(1)  FROM int_share_01.zillow where rundate = '2019-09-15 13:47:04' and rstate in ('NV', 'AZ') and property_type != 'Vacant Land';

select distinct(rundate) as rundate from int_share_01.zillow order by 1 desc;


select *, A.price / B.price from 
(select property_id, price, property_status, rundate  FROM int_share_01.zillow where rundate = '2018-09-17 23:32:06' and rstate in ('NV', 'AZ') and property_type != 'Vacant Land'
 ) as A
join
(select property_id, price, property_status, rundate  FROM int_share_01.zillow where rundate = '2018-09-11 10:37:16' and rstate in ('NV', 'AZ') and property_type != 'Vacant Land' ) as B 
on A.property_id = B.property_id 
where A.price != B.price or A.property_status != B.property_status;


select distinct(A.property_id) from 
(select property_id, price, property_status, rundate  FROM int_share_01.zillow where rundate = '2018-09-17 23:32:06' and rstate in ('NV', 'AZ') and property_type != 'Vacant Land'
 ) as A
left join
(select property_id, price, property_status, rundate  FROM int_share_01.zillow where rundate = '2018-09-11 10:37:16' and rstate in ('NV', 'AZ') and property_type != 'Vacant Land' ) as B 
on A.property_id = B.property_id 
where A.price != B.price or A.property_status != B.property_status or B.property_id is null ;


select * from 
(select property_id, price, property_status, rundate  FROM int_share_01.zillow where rundate = '2018-09-17 23:32:06' and rstate in ('NV', 'AZ') and property_type != 'Vacant Land'
 ) as A
left join
(select property_id, price, property_status, rundate  FROM int_share_01.zillow where rundate = '2018-09-11 10:37:16' and rstate in ('NV', 'AZ') and property_type != 'Vacant Land' ) as B 
on A.property_id = B.property_id 
where B.property_id is null ;



