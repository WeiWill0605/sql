select * from eventlogs.event_zillowsoldaction order by 1 desc;

select * from eventlogs.event_zillowsoldaction where RunID = 4251 and SeverityID > 2 order by 1 desc;

select * from eventlogs.event_zillowsoldaction where RunID = 3162 order by 1 desc;

select * from eventlogs.event_zillowsoldaction where Subject = 'Retried all failed';
select * from int_share_01.zillow_sold  order by 1 desc;


