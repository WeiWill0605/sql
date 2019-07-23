SELECT * FROM int_share_01.uzero_store where longitude is null;

SELECT * FROM int_share_01.uzero_store where rundate = (select max(rundate) from int_share_01.uzero_store );

select RunDate, count(1) as TotalCount, 
 sum(case when loc_name is null or loc_name = '' then 1 else 0 end) as count_loc_name_is_null,
 sum(case when loc_type is null or loc_type = '' then 1 else 0 end) as count_loc_type_is_null,
 sum(case when address_raw is null or address_raw = '' then 1 else 0 end) as count_address_raw_is_null,
 sum(case when city is null or city = '' then 1 else 0 end) as count_city_is_null,
 sum(case when state is null or state = '' then 1 else 0 end) as count_state_is_null,
 sum(case when longitudzillow_property_detaile is null or longitude = '' then 1 else 0 end) as count_longitude_is_null,
 sum(case when latitude is null or latitude = '' then 1 else 0 end) as count_latitude_is_null 
from int_share_01.uzero_store 
 where Rundate = (select max(Rundate) from int_share_01.uzero_store) 
 group by Rundate order by Rundate desc;



SELECT rundate, state, count(1) from int_share_01.uzero_store 
where rundate = (select max(rundate) from int_share_01.uzero_store ) 
group by state desc;
