SELECT * FROM pri_zwei.cafedecoral_store;
SELECT count(1), rundate FROM pri_zwei.cafedecoral_store group by rundate desc;



select RunDate,count(*) as TotalCount, 
 sum(case when loc_name is null or loc_name = '' then 1 else 0 end) as count_loc_name_is_null,
 sum(case when loc_number is null or loc_number = '' then 1 else 0 end) as count_loc_number_is_null,
 sum(case when address_raw is null or address_raw = '' then 1 else 0 end) as count_address_raw_is_null,
 sum(case when longitude is null or longitude = '' then 1 else 0 end) as count_longitude_is_null,
 sum(case when latitude is null or latitude = '' then 1 else 0 end) as count_latitude_is_null 
 from pri_zwei.cafedecoral_store 
 where Rundate = (select max(Rundate) from pri_zwei.cafedecoral_store) 
 group by Rundate order by Rundate desc;