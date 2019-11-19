select * from srs.zillow_property_map order by 1 desc ;
select count(distinct property_id), source_company from srs.zillow_property_map group by source_company order by 1 desc ;

select * from srs.zillow_property_map where rundate = '2019-11-19 09:53:04' order by 1 desc ;