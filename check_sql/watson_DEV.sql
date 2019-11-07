select * from eventlogs.event_watsonschinaaction order by 1 desc;

select * from eventlogs.event_watsonschinaaction where runid = 2523 and SeverityID >= 2;


select * from eventlogs.event_watsonschinaaction where EventID < '3609' order by 1 desc;

select * from eventlogs.event_watsonschinaaction where subject = 'processing city' order by 1 desc;


SELECT * FROM pri_zwei.watsonschina order by 1 desc;

select count(1), rundate from pri_zwei.watsonschina group by rundate order by 2 desc;