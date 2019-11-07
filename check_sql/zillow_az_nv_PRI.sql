select * from int_share_01.zillow order by tid desc;


select count(1), rundate from int_share_01.zillow where rundate > '2018-11-30 19:10:06' group by rundate order by 2 desc;

select count(1) from int_share_01.zillow where rundate = '2019-03-25 19:10:05' and (rstate in ('NV', 'AZ') and property_type != 'Vacant Land' or zillow_owned = 1)  and property_type != 'Vacant Land'   ;

select count(1) from int_share_01.zillow where rundate = '2018-11-12 19:10:06' and (rstate in ('NV', 'AZ') or zillow_owned = 1)  ;

select count(1), rundate from int_share_01.zillow_sold_az_nv group by rundate order by 2 desc;
select * from int_share_01.zillow_sold_az_nv order by 1 desc;

select * from int_share_01.zillow_price_az_nv order by 1 desc;
select * from int_share_01.zillow_price_az_nv where property_id = '7175772' order by 1 desc;
select * from int_share_01.zillow_property_detail_az_nv where property_id = '7532077' order by 1 desc;


select * from int_share_01.zillow_property_detail_az_nv order by 1 desc;
SELECT count(1), rundate FROM int_share_01.zillow_property_detail_az_nv where rundate > '2018-11-30 19:10:06' group by rundate order by 2 desc ;

SELECT count(1), rundate FROM int_share_01.zillow_property_detail_az_nv group by rundate order by 2 desc ;

SELECT count(1) , rundate FROM int_share_01.zillow_price_az_nv group by rundate order by 2 desc;                                                                                                                                                                                                                                                                                              

SELECT count(1), count(distinct concat(property_id, event_name, event_time, price)) FROM int_share_01.zillow_price_az_nv where price is not null  order by 1 desc;


