SELECT * FROM pr01.sebank order by 1 desc;


SELECT count(1), rundate FROM pr01.sebank group by rundate order by rundate  desc ;