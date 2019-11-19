select * from srs.zillow_price_history order by 1 desc ;


select count(1), count(distinct(concat(property_id, event_name, event_time, price))) from srs.zillow_price_history where rundate >= '2019-08-13 13:01:10' order by 1 desc ;


select count(1), rundate from srs.zillow_price_history group by rundate  order by 2 desc ;

select count(1), rundate from srs.zillow_property_map group by RunDate  order by 2 desc ;

SELECT count(1), count(distinct concat(property_id, event_name, event_time, price)) FROM srs.zillow_price_history where price is not null  order by 1 desc;
SELECT count(1), concat(property_id, event_name, event_time, price) FROM srs.zillow_price_history where price is not null  group by concat(property_id, event_name, event_time, price)  order by 1 desc;

select * from srs.zillow_price_history where property_id = '66856690' order by 1 desc ;
select * from srs.zillow_price_history where property_id = '126012120' order by 1 desc ;
select * from srs.zillow_price_history where property_id = '118494578' order by 1 desc ;

