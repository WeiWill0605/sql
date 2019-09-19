select * from eventlogs.event_happylemonaction  order by 1 desc;
select * from eventlogs.event_happylemonaction where runid = 10561 and  SeverityID > 2 order by 1 desc;
select Subject, count(1) from eventlogs.event_happylemonaction where runid = 8883 and  SeverityID > 2 group by Subject order by 1 desc;

select * from eventlogs.event_happylemonaction  where Subject = 'failed to process street coord' order by 1 desc;

SELECT * FROM pri_zwei.happy_lemon_store_web  order by 1 desc;

SELECT * FROM pri_zwei.happy_lemon_store_mobile order by 1 desc;
SELECT count(1), count(distinct address_raw) FROM pri_zwei.happy_lemon_store_web order by 1 desc;