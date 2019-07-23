select * from eventlogs.event_iqiyiplayaction order by 1 desc;

SELECT * FROM pri_zwei.maopro_iqiyi_rank order by 1 desc;

SELECT * FROM pri_zwei.maopro_iqiyi_rank where rundate = '2018-10-30 12:38:47' and video_type = 'drama' order by 1 ;

SELECT count(1), count(distinct album_id) FROM pri_zwei.maopro_iqiyi_rank where rundate = '2018-10-30 12:38:47' order by 1 desc;