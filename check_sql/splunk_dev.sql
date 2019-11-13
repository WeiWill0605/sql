select * from eventlogs.event_splunkaction order by 1 desc;
select * from eventlogs.event_splunkaction where EventID <= 83 order by 1 desc;
select * from eventlogs.event_splunkaction where RunID = '10451' and SeverityID > 2 order   by 1 desc;
