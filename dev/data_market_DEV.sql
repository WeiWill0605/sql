select * from eventlogs.event_datamarketaction order by 1 desc;

select * from eventlogs.event_datamarketaction where subject != 'wan not in capital raw ' order by 1 desc;

select * from eventlogs.event_datamarketaction where runid = 3726 and  SeverityID > 2 order by 1 desc;
 
SELECT * FROM zwei.data_market_product order by 1 desc;

SELECT count(1), rundate FROM zwei.data_market_product group by rundate order by 2 desc;



SELECT * FROM zwei.data_market_company order by 1 desc;

select distinct(org_code)  FROM zwei.data_market_company ;
