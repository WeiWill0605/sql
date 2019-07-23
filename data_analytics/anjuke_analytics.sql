### new house property

select * from pri_zwei.anjuke_new_property_api order by 1 desc;
select count(1), rundate from pri_zwei.anjuke_new_property_api group by rundate order by 2 desc;
select count(1), rundate from pri_zwei.anjuke_new_house_type group by rundate order by 2 desc;

select count(1), rundate from pri_zwei.anjuke_new_property_api where city = '深圳' group by rundate order by 2  desc;

select * from (select * from pri_zwei.anjuke_new_property_api where city = '深圳' and rundate = '2018-06-21 14:27:46') as a 
left join (select * from pri_zwei.anjuke_new_property_api where city = '深圳' and rundate = '2018-06-26 15:45:58' ) as b
on a.development_id = b.development_id where b.development_id is null;

select * from pri_zwei.anjuke_new_property_api  where development_id = '411144';






### used neighbor 
select * from pri_zwei.anjuke_used_neighbor order by 1 desc;

select distinct(rundate) from pri_zwei.anjuke_used_neighbor order by 1 desc;
select count(1), rundate from pri_zwei.anjuke_used_neighbor group by rundate order by 2 desc;

select * from pri_zwei.anjuke_used_neighbor where rundate = '2018-06-11 16:00:10' and city = '青岛' order by 1 desc;

select count(1), city, rundate from pri_zwei.anjuke_used_neighbor where rundate in ('2018-06-11 16:00:10', '2018-05-22 10:43:53') group by city, rundate order by city, rundate desc;

select  city,count(1) from pri_zwei.anjuke_used_neighbor where rundate = '2018-05-22 10:43:53' group by city order by city desc;

select * from (select distinct development_id as development_id from  pri_zwei.anjuke_used_neighbor where rundate = '2018-05-22 10:43:53'and city = '青岛') as a 
left join (select distinct development_id as development_id from  pri_zwei.anjuke_used_neighbor where rundate =  '2018-06-11 16:00:10' and city = '青岛' ) as b 
on a.development_id = b.development_id where b.development_id is null;

