
###### event area
select * from eventlogs.event_chinakfcaction order by 1 desc;

select * from eventlogs.event_chinakfcaction where severityId =3 and runid = 1580  order by 1 desc;

select * from eventlogs.event_chinakfcaction where EventId <=150228 order by 1 desc;

### product area

select * from pri_zwei.kfcchina order by 1 desc;
select * from pri_zwei.kfcchina_map order by 1 desc;

select count(1),RunDate from pri_zwei.kfcchina group by RunDate order by 2 desc;
select count(1),RunDate from pri_zwei.kfcchina_map group by RunDate order by 2 desc;

select count(*) from  pri_zwei.kfcchina_map where tid > 3644 order by 1 desc;

select count(1),RunDate from pri_zwei.kfcchina2 group by RunDate order by 2 desc;


select max(rundate) from pri_zwei.kfcchina2 ;

select * from pri_zwei.kfcchina_map where store_code =  'CDU185' order by 1 desc;
