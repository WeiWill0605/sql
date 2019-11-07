SELECT * FROM pri_zwei.dicos_store order by 1 desc;
SELECT * FROM pri_zwei.dicos_store where state is null order by 1 desc;
SELECT * FROM pri_zwei.dicos_store order by create_time asc;

SELECT * FROM pri_zwei.dicos_store 
where rundate = (select max(rundate) from pri_zwei.dicos_store ) order by 1 desc;

select count(1), rundate from pri_zwei.dicos_store group by rundate desc;
