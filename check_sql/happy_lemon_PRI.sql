SELECT * FROM pri_zwei.happy_lemon_store_web order by 1 desc;
SELECT count(1), rundate FROM pri_zwei.happy_lemon_store_web group by rundate desc;
SELECT count(1), rundate FROM pri_zwei.happy_lemon_store group by rundate desc;


SELECT * FROM pri_zwei.happy_lemon_store_mobile order by 1 desc;
SELECT * FROM pri_zwei.happy_lemon_store_mobile where latitude is null order by 1 desc;
SELECT count(1), rundate FROM pri_zwei.happy_lemon_store_mobile group by rundate desc;

select * from 
(select * from pri_zwei.happy_lemon_store_mobile where rundate = '2019-07-04 09:18:22') as A left join
(select * from pri_zwei.happy_lemon_store_mobile where rundate = '2019-07-03 14:49:29') as B on A.latitude = B.latitude and A.longitude = B.longitude where B.latitude is null;


select * from pri_zwei.happy_lemon_store_mobile where rundate = '2019-07-02 16:16:05' and address_raw like '山东省%'