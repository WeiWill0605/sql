
select * from eventlogs.event_meituanrestaurantaction order by 1 desc;
select * from eventlogs.event_meituanrestaurantaction where JobID = '7033001' order by 1 desc;

select * from eventlogs.event_meituanrestaurantaction where SeverityID > 2 order by 1 desc;
select * from eventlogs.event_meituanrestaurantaction where Subject = 'Retried all failed' order by 1 desc;
select * from eventlogs.event_meituanrestaurantaction where SeverityID > 2 and runid = '1999' order by 1 desc;

SELECT * FROM eventlogs.event_meituanrestaurantaction where runid = 3499 order by 1 desc ;

select * from eventlogs.event_meituanrestaurantaction where subject = 'dict info' and runid = 1400 limit 1000;

SELECT * FROM eventlogs.event_meituanrestaurantaction where EventID < 65825 order by 1 desc ;

select * from eventlogs.event_meituanrestaurantaction where details = '0' order by 1 desc;








select * from meituan_rest_region order by 1 desc;

select * from meituan_restaurant order by 1 desc;
select * from meituan_restaurant where rundate = '2018-08-09 22:10:36';
select count(1), rundate  from meituan_restaurant group by rundate  order by 2 desc;



select count(1), RunDate from meituan_rest_region group by rundate  order by 2 desc;

select * from meituan_rest_region ;

start transaction;
delete  from meituan_rest_region where tid = 1 ;
rollback;
commit;

select area_id, count_of_rest from meituan_rest_region where level = 2 and rundate = (select max(rundate) from meituan_rest_region where city_id = 1) and count_of_rest < 2000 and city_id = 1 ;

select area_id, max(count_of_rest) from meituan_rest_region where level = 2 and city_id = 1 and rundate = (select max(rundate) from meituan_rest_region)  group by area_id having max(count_of_rest) > 2000;


select area_name, sub_area_id, count_of_rest from  meituan_rest_region where area_id  in (select distinct area_id from meituan_rest_region where level = 2 and count_of_rest > 2000) and level = 3 and count_of_rest > 1 and city_id = 1 and RunDate =  (select max(rundate) from meituan_rest_region);

select * from meituan_rest_region where sub_area_id = '20426';











SELECT * FROM pri_zwei.meituan_restaurant order by 1 desc;
select count(1), rundate from pri_zwei.meituan_restaurant order by 2 desc;
select count(1) from pri_zwei.meituan_restaurant where city = '北京';
select count(1), area_name from pri_zwei.meituan_restaurant where city = '北京' group by area_name order by 1 desc;
select count(distinct(poiid)), cate_name from pri_zwei.meituan_restaurant where city = '北京' group by cate_name order by 1 desc;


SELECT * FROM pri_zwei.meituan_restaurant where rundate = '2018-06-09 16:02:09' order by 1 desc;


