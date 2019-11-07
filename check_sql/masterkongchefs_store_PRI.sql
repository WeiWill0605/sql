select count(1), rundate from pri_zwei.masterkongchefs_store group by rundate desc;

SELECT * FROM pri_zwei.masterkongchefs_store
 where rundate = (select max(rundate) from  pri_zwei.masterkongchefs_store) ;