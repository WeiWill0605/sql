SELECT * FROM iq.iqiyi_new_user order by jointime desc;

SELECT * FROM iq.iqiyi_new_user where date(jointime) >= '2019-05-23' ;
SELECT count(1), date(jointime) FROM iq.iqiyi_new_user group by date(jointime) desc ;



SELECT * FROM iq.iqiyi_new_user_info order by 1 desc;
SELECT * FROM iq.iqiyi_new_user_info order by user_id asc;
SELECT * FROM iq.iqiyi_new_user_info order by user_id desc;