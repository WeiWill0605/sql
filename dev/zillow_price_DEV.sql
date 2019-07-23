SELECT * FROM eventlogs.event_zillowaction order by 1 desc;
SELECT * FROM eventlogs.event_zillowpriceaction order by 1 desc;
SELECT * FROM eventlogs.event_zillowpriceaction where RunID = '8992' order by 1 desc;
SELECT * FROM eventlogs.event_zillowpriceaction where RunID = '9123' and SeverityID > 2 order by 1 desc;


SELECT * FROM srs.zillow_price_history where source_company =  'opendoor'  order by 1 desc;
SELECT * FROM srs.zillow_price_history   order by 1 desc;