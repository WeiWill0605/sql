SELECT * FROM great_wall.us_online_video_pricing order by 1 desc;

SELECT * FROM great_wall.us_media_pricing where rundate = (select max(rundate) from great_wall.us_media_pricing ) order by 1 desc;
SELECT * FROM great_wall.us_media_pricing where rundate = (select max(rundate) from great_wall.us_media_pricing ) and  (CostPerMonth is null) order by 1 desc;

SELECT count(distinct SiteName) as SiteNameCount,
 sum(case when CostPerMonth is null then 1 else 0 end) as count_CostPerMonth_is_null 
FROM great_wall.us_media_pricing where rundate = (select max(rundate) from great_wall.us_media_pricing );

SELECT rundate, SiteName, count(1) FROM great_wall.us_media_pricing 
where rundate = (select max(rundate) from great_wall.us_media_pricing ) group by SiteName ;



SELECT count(1), rundate FROM great_wall.us_media_pricing group by rundate order by 2 desc;
