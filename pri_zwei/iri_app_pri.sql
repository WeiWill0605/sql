select * from pri_zwei.app_rank order by 1 desc;

SELECT count(1) FROM pri_zwei.app_details order by 1 desc;
SELECT count(distinct AppId) FROM pri_zwei.app_details order by 1 desc;
SELECT count(1), rundate FROM pri_zwei.app_details group by rundate order by 2 desc;