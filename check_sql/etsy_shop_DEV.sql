select * from eventlogs.event_etsyaction order by 1 desc;

select * from eventlogs.event_instagramprofileaction order by 1 desc;
select * from eventlogs.event_instagramprofileaction where  RunID = 15275 and SeverityID > 2  order by 1 desc; 

select * from eventlogs.event_etsyaction where runid = 5679 and Subject = 'shop does not exits' order by 1 desc;
select * from eventlogs.event_instagramprofileaction  order by 1 desc;
select * from eventlogs.event_etsyaction where RunID = 5679 and SeverityID > 2  order by 1 desc;

select * from eventlogs.event_instagramprofileaction  where RunID = 5724 and SeverityID > 2  order by 1 desc;

select * from eventlogs.event_instagramprofileaction where runid = '5370' and  Subject = 'json_block is unavailable'  order by 1 desc;

select * from eventlogs.event_instagramprofileaction where runid = '5370' and  Subject = 'invalidate url'  order by 1 desc;

select count(1), Subject from eventlogs.event_instagramprofileaction where runid = '5370' and SeverityID > 2 group by Subject order by 2 desc;



select * from eventlogs.event_etsyaction where runid = '5351' and  Subject = 'shop does not exits';

select * from eventlogs.event_etsyaction where runid = '5351'  and Subject = 'failed to find shop_id';




SELECT * FROM great_wall.etsy_shop order by 1 desc;

SELECT * FROM great_wall.etsy_shop_detail  order by 1 desc;

SELECT * FROM great_wall.instagram_profile order by 1 desc;


select tid, shop_id, instagram_url from great_wall.etsy_shop_detail where instagram_url is not null order by tid desc;


select max(tid), shop_id, instagram_url from great_wall.etsy_shop_detail where instagram_url is not null group by shop_id  order by tid desc;


