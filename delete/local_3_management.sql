
start transaction;
#delete from zwei.iqiyi_user where rundate = '2018-08-28 15:10:34';
commit;



SELECT * FROM information_schema.innodb_trx;  

SELECT * FROM information_schema.INNODB_LOCKs;


SELECT * FROM information_schema.INNODB_LOCK_waits;


show processlist;

#kill 24230;