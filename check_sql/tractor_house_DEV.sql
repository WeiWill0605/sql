select * from eventlogs.event_tractorhouseaction order by 1 desc;


select * from eventlogs.event_tractorhouseaction where runid = 4241 and Subject = 'Retried all failed' order by 1 desc;

select * from eventlogs.event_tractorhouseaction where RunID = 4241 and SeverityID > 2 and Subject != 'no auctiondate' order by 1 desc;


select * from eventlogs.event_tractorhouseaction where EventID < 395247 order by 1 desc;