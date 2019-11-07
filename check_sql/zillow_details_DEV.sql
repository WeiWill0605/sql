SELECT * FROM eventlogs.event_zillowaction order by 1 desc;
SELECT * FROM eventlogs.event_zillowaction where RunID = '8935' order by 1 asc;

SELECT * FROM eventlogs.event_zillowdetailsaction order by 1 desc;
SELECT * FROM eventlogs.event_zillowdetailsaction where RunID = 6648  order by 1 asc;

SELECT * FROM eventlogs.event_zillowdetailsaction where EventID < 54 and Subject = 'failed to get property id' order by 1 desc;

SELECT * FROM srs.zillow_property_detail order by 1 desc;
SELECT * FROM srs.zillow_property_detail where source_company = 'opendoor' order by 1 desc;
SELECT count(1), rundate  FROM srs.zillow_property_detail group by rundate order by 2 desc;

