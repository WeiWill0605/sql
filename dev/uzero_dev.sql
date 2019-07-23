select * from eventlogs.event_uzeroaction order by 1 desc;
select * from eventlogs.event_uzeroaction where SeverityID > 2 order by 1 desc;
select * from eventlogs.event_uzeroaction where Subject like 'pro%' order by 1 desc;

select * from uzero_store order by 1 desc;