
# event-log
select * from eventlogs.event_anjukeaction order by 1 desc;
select * from eventlogs.event_anjukeaction where  SeverityID > 2 order by 1 desc;
select * from eventlogs.event_anjukeaction where  SeverityID > 2 and runid = '1531' order by 1 desc;

select * from eventlogs.event_anjukeaction where eventId < 93710  order by 1 desc;
select * from eventlogs.event_anjukeaction  where Subject = 'url is wrong' order by 1 desc;

select * from eventlogs.event_anjukeaction where runid = 1471 and subject = 'failed to get new house map url' order by 1 desc;

select * from eventlogs.event_anjukeaction where runid = 1347 and subject = 'failed to load group json' order by 1 desc;
select * from eventlogs.event_anjukeaction where runid = 1347 and subject = 'failed to get used house url' order by 1 desc;
select * from eventlogs.event_anjukeaction where runid = 1347 and subject = 'retry three times failed' order by 1 desc;


select count(1), subject from eventlogs.event_anjukeaction where runid = 1347 and SeverityID > 2  group by subject order by 1 desc;

select * from eventlogs.event_anjukeaction where subject = 'neighbor list is still blank ' and runid = 938  order by 1 desc;



select * from eventlogs.event_anjukeaction where runid = 938 and SeverityID > 2 and subject = 'neighbor list is still blank' order by 1 desc;

select * from eventlogs.event_anjukeaction where runid = 890 and SeverityID > 2  order by 1 desc;
select * from eventlogs.event_anjukeaction where runid = 890 order by 1 desc;

select * from eventlogs.event_anjukeaction where eventid < 90020 order by 1 desc;

select * from eventlogs.event_anjukeaction where runid =  857 and severityid > 2 and subject!= 'failed to get used house url'order by 1 desc;


## property
SELECT * FROM pri_zwei.anjuke_new_property_api order by 1 desc;

## type
SELECT * FROM pri_zwei.anjuke_new_house_type order by 1 desc;


## used_neighbor
select * from pri_zwei.anjuke_used_neighbor order by 1 desc;

select * from  pri_zwei.anjuke_used_neighbor where area_name = '蓟州' order by 1 desc;

select sum(prop_num) from  pri_zwei.anjuke_used_neighbor where area_name = '蓟州' order by 1 desc;

