SELECT * FROM pri_zwei.weibo_fans order by 1 desc;

SELECT count(distinct(user_id)) FROM pri_zwei.weibo_fans where follow = '3972729684' order by 1 desc;

SELECT * FROM pri_zwei.weibo_fans where rundate = '2018-06-20 17:15:04' order by 1 desc ;

select count(1), rundate from pri_zwei.weibo_fans group by rundate order by 2 desc;

SELECT * FROM pri_zwei.weibo_fans where user_type = 'super_user' order by 1 desc;

