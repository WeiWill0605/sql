SELECT * FROM eventlogs.event_alibabasupplieraction order by 1 desc;

SELECT * FROM eventlogs.event_alibabasupplieraction where EventID > 7647 order by 1 asc;

SELECT * FROM eventlogs.event_alibabasupplieraction where EventID > 7750 and SeverityID > 20 order by 1 desc;

select * from eventlogs.event_alibabasupplieraction where Details = 'start to run netflix' order by 1 desc;

 
SELECT distinct Details FROM eventlogs.event_alibabasupplieraction where Details like 'country code does not match%' order by 1 desc;


SELECT * FROM eventlogs.event_alibabasupplieraction where Details = 'country code does not match zh-HK' order by 1 desc;


select * from eventlogs.event_alibabasupplieraction where EventID > 4629 and EventID < 4649;