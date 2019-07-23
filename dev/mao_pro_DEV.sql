select * from eventlogs.event_maoproaction  order by 1 desc;

select * from eventlogs.event_maoproaction where JobID = 7023003 order by 1 desc;

select * from eventlogs.event_maoproaction where runid = 4989  order by 1 desc;


select count(1) from eventlogs.event_maoproaction where runid = 5008 and Subject = 'processing movie' order by 1 asc;

select count(1) from eventlogs.event_maoproaction where runid = 4775 and SeverityID >2  order by 1 desc;
select count(1) from eventlogs.event_maoproaction where runid = 4299 and Subject = 'network start date or end date is null'  order by 1 desc;
select count(1), Subject from eventlogs.event_maoproaction where runid = 4267 and SeverityID >2 group by Subject  order by 1 desc;

select * from eventlogs.event_maoproaction where SeverityID > 2 and Subject != 'failed to download page_iqiyi' and Subject != 'failed to download online moive page' order by 1 desc;


select * from eventlogs.event_maoproaction where eventId < 63218 order by 1 desc;
 

