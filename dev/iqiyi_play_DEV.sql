select * from eventlogs.event_iqiyiplayaction order by 1 desc;


select * from eventlogs.event_iqiyiplayaction where runid = 8972 and SeverityID > 2 order by 1 desc;

select * from eventlogs.event_iqiyiplayaction where runid = 6377 and SeverityID > 2 and Subject like 'in validate album id' order by 1 desc;

select * from eventlogs.event_iqiyiplayaction where EventID < 875 order by 1 desc;



SELECT * FROM iq.iqiyi_official_rank_daily order by 1 desc;

SELECT count(1), rank_type, video_type FROM iq.iqiyi_official_rank_daily where rundate = '2019-04-11 15:45:16' group by rank_type, video_type order by 1 desc;

SELECT count(1), rundate FROM iq.iqiyi_official_rank_daily group by rundate order by 2 desc;

