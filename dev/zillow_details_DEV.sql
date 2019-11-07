SELECT * FROM eventlogs.event_zillowaction ORDER BY 1 DESC;
SELECT * FROM eventlogs.event_zillowaction WHERE RunID = '8935' ORDER BY 1 ASC;

SELECT * FROM eventlogs.event_zillowdetailsaction ORDER BY 1 DESC;
SELECT * FROM eventlogs.event_zillowdetailsaction WHERE RunID = 13842 AND SeverityId > 2  ORDER BY 1 ASC;

SELECT * FROM eventlogs.event_zillowdetailsaction WHERE EventID < 54 AND SUBJECT = 'failed to get property id' ORDER BY 1 DESC;

SELECT * FROM srs.zillow_property_detail ORDER BY 1 DESC;
SELECT * FROM srs.zillow_property_detail WHERE source_company = 'opendoor' ORDER BY 1 DESC;
SELECT COUNT(1), rundate  FROM srs.zillow_property_detail GROUP BY rundate ORDER BY 2 DESC;

