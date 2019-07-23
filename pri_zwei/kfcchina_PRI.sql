
### kfcchina
select * from pri_zwei.kfcchina order by 1 desc;
SELECT count(1), rundate  FROM pri_zwei.kfcchina group by rundate order by 2 desc;

select * from pri_zwei.kfcchina where rundate = '2019-02-14 15:06:58' and city = '郑州市' and product_offering='None' ;

## kfcchina2
SELECT count(1), rundate  FROM pri_zwei.kfcchina2 group by rundate order by 2 desc;
select * from pri_zwei.kfcchina2 order by 1 desc;
select concat(city,market) area, longitude as lng, latitude as lat from pri_zwei.kfcchina2 order by 1 desc;
select count(distinct(concat(longitude,',' ,latitude))) from pri_zwei.kfcchina2 ;

select * from pri_zwei.kfcchina2 where rundate = '2018-06-09 12:19:13' and loc_name order by 1 desc;

select * from (select * from pri_zwei.kfcchina2 where rundate = '2018-06-09 12:19:13') as A left join
(select * from pri_zwei.kfcchina2 where rundate = '2018-04-12 16:36:04') as B on A.store_code = B.store_code where B.store_code is Null;

select * from (select * from pri_zwei.kfcchina_map where rundate = '2018-04-14 11:21:50') as A left join
(select * from pri_zwei.kfcchina_map where rundate = '2018-06-08 09:27:30') as B on A.store_code = B.store_code where B.store_code is Null;


select * from pri_zwei.kfcchina_map where loc_number = 8964;


### kfcchina_map

select * from pri_zwei.kfcchina_map order by 1 desc;
select * from pri_zwei.kfcchina_map where rundate = '2018-08-22 10:01:04' order by 1 desc;
SELECT count(1), rundate  FROM pri_zwei.kfcchina_map group by rundate order by 2 desc;
select count(1), city, rundate from pri_zwei.kfcchina_map group by rundate, city order by city, rundate desc;

select * from (select * from pri_zwei.kfcchina_map where rundate = '2018-06-08 09:27:30') as A left join
(select * from pri_zwei.kfcchina_map where rundate = '2018-06-22 17:22:32') as B on A.loc_number = B.loc_number where B.loc_number is Null;

select * from (select * from pri_zwei.kfcchina_map where rundate = '2018-06-22 17:22:32') as A left join
(select * from pri_zwei.kfcchina_map where rundate = '2018-04-14 11:21:50') as B on A.loc_number = B.loc_number where A.loc_number is Null;













select * from pri_zwei.kfcchina_map where address_raw like '%长江中路419号T117-118%' order by 1 desc;
select * from pri_zwei.kfcchina2 where address_raw like '%长江中路419号T117-118%' order by 1 desc;
select * from pri_zwei.kfcchina where address_raw like '%长江中路419号T117-118%' order by 1 desc;




