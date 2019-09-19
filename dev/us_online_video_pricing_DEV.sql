SELECT * FROM eventlogs.event_usonlinevideopricingaction order by 1 desc;
SELECT * FROM eventlogs.event_USOnlineVideoPromotionAction order by 1 desc;


SELECT * FROM great_wall.us_online_video_pricing order by 1 desc;
SELECT * FROM great_wall.us_online_video_promotion order by 1 desc;

SELECT count(1), rundate FROM great_wall.us_online_video_pricing group by rundate  order by 2 desc;

SELECT * FROM great_wall.us_online_video_pricing where rundate = (select max(rundate) from great_wall.us_online_video_pricing ) order by 1 desc;