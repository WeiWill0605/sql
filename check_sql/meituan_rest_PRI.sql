### region

SELECT * FROM zwei.meituan_rest_region order by 1 desc;
select count(1), rundate from zwei.meituan_rest_region group by rundate  order by 2 desc;

SELECT * FROM pri_zwei.meituan_rest_region where city_name = '' and level = 2 and count_of_rest < 2000 order by 1 desc;
SELECT * FROM pri_zwei.meituan_rest_region where city_name = '广州' and sub_area_id = '1061' order by 1 desc;
SELECT city_name, count_of_rest, RunDate FROM pri_zwei.meituan_rest_region where level = 1 group by city_name, rundate;

###create index city on pri_zwei.meituan_restaurant(city);


#insert into meituan_restaurant_qingdao select * from meituan_restaurant where rundate = '2018-08-11 06:01:09'













### rest
select * from zwei.meituan_restaurant  order by 1 desc;
SELECT count(1), rundate FROM zwei.meituan_restaurant group by rundate  order by 2 desc;


select * from zwei.meituan_restaurant where city = '青岛市' order by 1 desc;
select * from zwei.meituan_restaurant where rundate = '2018-07-18 14:02:14'   order by 1 desc;
select * from pri_zwei.meituan_restaurant where product_id = '36267878' order by 1 desc;

select count(distinct(poiid)), city from pri_zwei.meituan_restaurant where rundate = '2018-06-14 10:52:27' group by city;
select count(distinct(poiid)), cate_name from pri_zwei.meituan_restaurant where rundate = '2018-06-14 10:52:27' and city = '北京' group by cate_name;

select count(1), city from pri_zwei.meituan_restaurant where rundate = '2018-06-13 18:01:53' group by city;



select * from pri_zwei.meituan_restaurant where rundate = '2018-06-14 10:52:27' and area_name = '通州区';
select count(1) from pri_zwei.meituan_restaurant where rundate = '2018-06-14 10:52:27' and area_name = '通州区';