SELECT * FROM iq.iqiyi_new_user_info order by 1 desc;
SELECT * FROM iq.iqiyi_new_user_info where type = 1 order by 1 desc;

SELECT count(1), right(user_id, 1) FROM iq.iqiyi_new_user_info where type = 1 group by  right(user_id, 1)  order by 1 desc;