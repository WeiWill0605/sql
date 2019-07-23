SELECT * FROM eventlogs.event_zillowaznvaction order by 1 desc;

SELECT * FROM eventlogs.event_zillowaction  order by 1 desc;

SELECT * FROM eventlogs.event_zillowaznvaction where JobId = '7005203'  and SeverityID > 2 order by 1 desc;
SELECT * FROM eventlogs.event_zillowaction  where runid = 4509 and SeverityID > 2 order by 1 desc; 

 
SELECT * FROM eventlogs.event_zillowaznvaction where runid = '5865' order by 1 asc;


SELECT * FROM eventlogs.event_zillowaznvaction where runid = 5444 and SeverityID > 2 order by 1 desc;
SELECT * FROM eventlogs.event_zillowaznvaction where runid = 4474 order by 1 asc;

select * from int_share_01.zillow_price_az_nv where property_id = '7060317' order by 1 desc;


SELECT count(1), right(Details, 2) FROM eventlogs.event_zillowaznvaction where runid = '3961' and Subject = 'retry' group by right(Details,2) order by 1 desc;

select count(1), hour(EventTime) FROM eventlogs.event_zillowaznvaction where Subject = 'retry' group by hour(EventTime);

SELECT count(1), count(distinct details) FROM eventlogs.event_zillowaznvaction where runid = 4070 and Subject = 'property is null' order by 1 desc;