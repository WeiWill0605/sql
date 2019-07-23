SELECT * FROM pri_zwei.haidilao_store order by 1 desc;

SELECT count(1), rundate FROM pri_zwei.haidilao_store group by rundate order by 2 desc;

SELECT * FROM pri_zwei.haidilao_store where store_code = '050126' order by 1 desc;

SELECT count(1), rundate FROM pri_zwei.haidilao_store where country != 'CHN' group by rundate order by 2 desc;



SELECT count(1), rundate FROM pri_zwei.haidilao_store where country != 'CHN' group by rundate  order by 2 desc;
SELECT count(1), city,rundate FROM pri_zwei.haidilao_store group by city, rundate order by 2 desc;
