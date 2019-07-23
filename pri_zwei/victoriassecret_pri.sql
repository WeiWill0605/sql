select * from pri_zwei.victorias_secret_offer order by 1 desc;


select * from pri_zwei.victorias_secret_offer where rundate = (select max(rundate) from pri_zwei.victorias_secret_offer )order by 1 desc;

SELECT count(1), rundate FROM pri_zwei.victorias_secret_offer group by rundate order by 2 desc ;

