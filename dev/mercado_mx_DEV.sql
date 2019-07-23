select * from eventlogs.event_mercadomxaction order by 1 desc;

select * from eventlogs.event_mercadomxaction where  runid = 3889 and  SeverityID > 2  order by 1 desc;
SELECT * FROM eventlogs.event_mercadomxaction where runid >= 2161 order by 1 desc;

SELECT * FROM eventlogs.event_mercadomxaction where  runid = '2056' and  SeverityID > 2  and Subject != 'product list is none' and Subject != 'failed to process product'  order by 1 desc;