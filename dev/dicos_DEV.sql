select * from eventlogs.event_dicosaction order by 1 desc;

SELECT * FROM pri_zwei.dicos_store order by 1 desc;
SELECT * FROM pri_zwei.dicos_store where rundate = (select max(rundate) from pri_zwei.dicos_store ) order by 1 desc;
SELECT count(1), rundate  FROM pri_zwei.dicos_store group by rundate  order by 2 desc;