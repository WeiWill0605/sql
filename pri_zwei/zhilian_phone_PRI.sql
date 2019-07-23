SELECT * FROM zwei.zhilianjob_info_phone order by 1 desc;


SELECT count(1), rundate   FROM zwei.zhilianjob_info_phone group by rundate  order by 2 desc;

SELECT count(distinct(phone)) FROM zwei.zhilianjob_info_phone where phone is not null order by 1 desc;