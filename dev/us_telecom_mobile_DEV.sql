select * from eventlogs.event_ustelecomaction order by 1 desc;
select * from eventlogs.event_ustelecomaction where runid =  '10482'  order by 1 asc;
select * from eventlogs.event_ustelecomaction where runid =  '10489' and SeverityID > 2  order by 1 asc;


SELECT * FROM great_wall.us_telecom_mobile order by 1 desc;

SELECT * FROM great_wall.us_telecom_mobile where rundate = (select max(rundate) from great_wall.us_telecom_mobile ) order by 1 asc;
SELECT count(distinct DeviceName) FROM great_wall.us_telecom_mobile where rundate = (select max(rundate) from great_wall.us_telecom_mobile ) order by 1 asc;