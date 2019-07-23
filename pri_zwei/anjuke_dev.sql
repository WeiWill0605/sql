
# event-log
select * from eventlogs.event_anjukeaction  order by 1 desc;

select * from eventlogs.event_anjukeaction where runid = '1687' order by 1 asc;


select * from eventlogs.event_anjukeaction where runid = 1687 and SeverityID > 2 and subject != 'lat or lng is none' order by 1 desc;
select count(1), subject from eventlogs.event_anjukeaction where runid = 1687 and SeverityID > 2  group by subject order by 1 desc;

select * from eventlogs.event_anjukeaction where subject = 'Retried all failed' and runid = 1702  order by 1 desc;
select * from eventlogs.event_anjukeaction where eventId < 173000  order by 1 desc;


select * from eventlogs.event_anjukeaction where runid = 938 and SeverityID > 2 and subject = 'neighbor list is still blank' order by 1 desc;

select * from eventlogs.event_anjukeaction where runid = 938 and SeverityID > 2  order by 1 desc;

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

