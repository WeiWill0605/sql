


## property 
select * from zwei.anjuke_new_property order by 1 desc;
select count(1), RunDate from  zwei.anjuke_new_property group by rundate order by RunDate desc;
select distinct runid from pri_zwei.anjuke_new_property_api order by 1 desc;
select * from pri_zwei.anjuke_new_property_api where city = '' order by 1 desc;


# house type
select * from pri_zwei.anjuke_new_house_type order by 1 desc;

select count(1), RunDate from  pri_zwei.anjuke_new_house_type group by rundate order by RunDate desc;






## used house
SELECT * FROM zwei.anjuke_used_neighbor order by 1 desc;
select count(1), RunDate from  zwei.anjuke_used_neighbor group by rundate order by RunDate desc;
select sum(prop_num), RunDate from  zwei.anjuke_used_neighbor group by rundate order by RunDate desc;
select * from pri_zwei.anjuke_used_neighbor where development_id = '399718' order by 1 desc;
select * from pri_zwei.anjuke_used_neighbor where city = '胶南' order by 1 desc;

select sum(prop_num), city from pri_zwei.anjuke_used_neighbor where rundate = '2018-05-22 10:43:53' group by city order by 1 desc;
select count(1), city, rundate from pri_zwei.anjuke_used_neighbor group by city, rundate order by city desc, rundate desc;

SELECT * FROM pri_zwei.anjuke_used_neighbor where city='' and tid < 700337 order by 1 desc;
select * from pri_zwei.anjuke_used_neighbor where development_id = '997055' order by 1 desc;
