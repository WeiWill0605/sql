SELECT * FROM eventlogs.event_haidilaoaction  order by 1 desc;


SELECT * FROM pri_zwei.haidilao_store where country is null order by 1 desc;
SELECT count(1), city FROM pri_zwei.haidilao_store where country is null group by city  order by 2 desc;

SELECT * FROM pri_zwei.haidilao_store where loc_name like '%chat%' or loc_name like '%sun%' order by 1 desc;

