select * from int_share_01.zillow_sold  order by 1 desc;

select count(1), rundate from zillow_sold group by rundate order by 2 desc;

select count(1), home_status from zillow_sold group by home_status order by 1 desc;

select * from int_share_01.zillow_sold where rundate = '2018-09-22 10:24:14' and  home_status != 'RECENTLY_SOLD' order by date_sold desc;


select * from zillow_sold where phone is not null order by 1 desc;

select * from zillow_sold order by 1 desc;


select * from zillow_sold  where state = 'ca' order by 1 desc;


select count(1), count(distinct(property_id)) from zillow_sold order by 1 desc;


select DATE_ADD(now(), interval -8 day);

select distinct(property_id)   from int_share_01.zillow_sold where home_type != 'LOT' and date_sold > DATE_ADD(now(), interval -8 day);

select count(distinct(property_id)) from int_share_01.zillow_sold where home_type != 'LOT' and date_sold > DATE_ADD(now(), interval -10 day);