SELECT * FROM pri_zwei.zhenkunfu_store_web order by 1 desc;
SELECT count(1), rundate FROM pri_zwei.zhenkunfu_store_web group by rundate  order by 2 desc;
SELECT count(1), rundate FROM pri_zwei.zhenkunfu_store_mobile group by rundate  order by 2 desc;

SELECT * FROM pri_zwei.zhenkunfu_store_mobile order by 1 desc;
SELECT * FROM pri_zwei.zhenkunfu_store_mobile where loc_number = 'store5b1faba8f49e89049b6c5f21' order by 1 desc;
SELECT count(1), count(distinct loc_number), count(distinct address_1), count(distinct loc_name), rundate FROM pri_zwei.zhenkunfu_store_mobile group by rundate  order by 2 desc;
select count(distinct loc_number) from  pri_zwei.zhenkunfu_store_mobile where rundate >= '2019-06-18 16:25:06' ;

SELECT count(1), loc_type FROM pri_zwei.zhenkunfu_store_mobile group by loc_type order by 1 desc;
SELECT * FROM pri_zwei.zhenkunfu_store_mobile where loc_type = 'TD'  order by 1 desc;

select * from 
(select * from pri_zwei.zhenkunfu_store_mobile where rundate = '2019-07-05 10:40:46') as A left join
(select * from pri_zwei.zhenkunfu_store_mobile where rundate = '2019-07-10 09:56:31' ) as B on A.loc_name = B.loc_name  where B.loc_number is null;
;

SELECT * FROM pri_zwei.zhenkunfu_store_mobile where address_1 like '%沈阳%' order by 1 desc;
SELECT * FROM pri_zwei.zhenkunfu_store_mobile where address_1 like '%桃源%' order by 1 desc;
