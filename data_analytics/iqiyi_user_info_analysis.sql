
select count(1) as total_count, sum(case when type = 1 then 1 end ) as num_of_user_is_vip_now,  sum(case when type = 0 then 1 end )  as num_of_user_was_vip, 
sum(case when type is null then 1 end ) as num_of_user_never_join_vip
  from iq.iqiyi_user_info_2019_06_24  order by 1 desc;




select count(1) from 
(SELECT user_id FROM iq.iqiyi_user_info_2019_04_24 where type = 1 ) as A 
left join 
(SELECT user_id FROM iq.iqiyi_user_info_2019_05_09 where type = 1) as B on A.user_id = B.user_id where B.user_id is null;



select count(1) from 
(SELECT user_id FROM iq.iqiyi_user_info_2019_04_24 where type = 1 ) as A 
left join 
(SELECT user_id FROM iq.iqiyi_user_info_2019_05_24 where type = 1) as B on A.user_id = B.user_id where B.user_id is null;


SELECT date(jointime),  min(uid), max(uid) FROM iq.iqiyi_new_user group by date(jointime) order by date(jointime) desc;




SELECT count(1), right(user_id, 2) FROM iq.iqiyi_user_info_2019_05_24 where type = 1 group by  right(user_id, 2)  order by 1 desc;