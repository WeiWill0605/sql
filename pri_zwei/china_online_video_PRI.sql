SELECT * FROM srs.china_online_video_pricing order by 1 desc;
SELECT * FROM srs.china_online_video_pricing where device = 'web' and platform = 'iqiyi'  order by 1 desc;

SELECT count(1), rundate FROM srs.china_online_video_pricing group by rundate order by 2 desc;