SELECT * FROM eventlogs.event_weibofans order by 1 desc;
SELECT * FROM eventlogs.event_weibofans where runid = 1854 order by 1 desc;

select count(1), rundate from pri_zwei.weibo_fans group by rundate order by 2 desc;
SELECT * FROM pri_zwei.weibo_fans order by 1 desc;
select count(distinct(user_id)) FROM pri_zwei.weibo_fans;


set @rundate_this_time := '2018-06-29 14:22:41';

##declare rundate_this_time = '2018-07-04 15:53:53';

select distinct(5963485601), @rundate_this_time from pri_zwei.weibo_fans where rundate =  @rundate_this_time order by 1 desc;