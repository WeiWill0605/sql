SELECT * FROM great_wall.us_cable_tv_pricing;
SELECT * FROM great_wall.us_media_pricing  where rundate = (select max(rundate) from great_wall.us_media_pricing )  order by 1 desc;
SELECT count(1), rundate  FROM great_wall.us_cable_tv_pricing group by rundate desc;

