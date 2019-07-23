SELECT * FROM zwei.meituan_hotel order by 1 desc;

select count(1), rundate from zwei.meituan_hotel group by rundate order by 2 desc;

SELECT count(1), rundate FROM pri_zwei.meituanhotel where lowest_price > original_price group by rundate  order by 2 desc; 

select * from pri_zwei.meituanhotel where hotel_id = '4396281' order by 1 desc;

select * from zwei.meituan_hotel where city = '青岛市' order by 1 desc;
select * from zwei.meituan_hotel where city = '青岛市' and hotel_name like '%奈思%' order by 1 desc;
select * from zwei.meituan_hotel where city = '青岛市' and hotel_id = '177574200' order by 1 desc;
   


SELECT count(1), rundate FROM pri_zwei.meituanhotel  group by rundate order by 2 desc;

select count(1), city from pri_zwei.meituanhotel group by city order by city desc;


# delete from meituan_hotel where rundate = '2018-08-05 13:01:06'