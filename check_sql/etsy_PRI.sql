SELECT * FROM great_wall.etsy_shop_detail where shop_id = '11186856' order by 1 desc;

SELECT * FROM great_wall.etsy_shop_detail where rundate = (select max(rundate) from great_wall.etsy_shop_detail );

SELECT count(1) FROM great_wall.etsy_shop_detail where rundate = (select max(rundate) from great_wall.etsy_shop_detail ) and instagram_url is not null and processed = 0 ;

select count(1), rundate from great_wall.etsy_shop_detail group by rundate order by 2 desc;

select count(1), rundate from great_wall.instagram_profile group by rundate order by 2 desc;

select distinct user_type from great_wall.instagram_profile;


select count(1) from great_wall.etsy_shop_detail where rundate = (select max(rundate) from great_wall.etsy_shop_detail ) and instagram_url is not null and `processed`=0 ;


select * from great_wall.instagram_profile order by 1 desc;

select * from great_wall.instagram_profile where etsy_shop_id = '11186856' order by 1 desc;

select shop_name, instagram_url from great_wall.etsy_shop_detail where instagram_url is not null and locate('instagram', instagram_url) < 1  order by 1 desc;

select max(tid) as tid , shop_id, instagram_url from great_wall.etsy_shop_detail where instagram_url is not null group by shop_id  order by tid desc;