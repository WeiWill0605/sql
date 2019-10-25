select * from  srs.zillow_property_detail order by 1 desc;
select * from  srs.zillow_property_detail where property_id = '80466033' order by 1 desc;
select count(1), count(distinct property_id) from  srs.zillow_property_detail where source_company = 'zillow' order by 1 desc;

select count(1), rundate from srs.zillow_property_detail group by RunDate order by 2 desc;
select count(1), count(distinct property_id), count(distinct addressslug) from  srs.zillow_property_detail order by 1 desc;

select count(1), property_id from srs.zillow_property_detail group by property_id order by 1 desc;

select count(1), count(distinct property_id), rundate from  srs.zillow_property_detail where source_company = 'zillow' group by rundate order by 1 desc;


select count(1)  FROM int_share_01.zillow where rundate = '2019-09-15 13:47:04' and zillow_owned = 1 ;
select count(1), count(distinct property_id)  FROM srs.zillow_property_detail where source_company = 'zillow';

select * from 
(select distinct property_id  FROM int_share_01.zillow where rundate = (select max(rundate) from int_share_01.zillow ) and zillow_owned = 1) as A 
left join
(select  distinct property_id FROM srs.zillow_property_detail where source_company = 'zillow') as B 
on A.property_id = B.property_id where B.property_id is null
;