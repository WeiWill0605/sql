select * from eventlogs.event_zhenkunfuaction order by 1 desc;
select * from eventlogs.event_zhenkunfuaction where runid = 8863 and SeverityID  order by 1 desc;

SELECT * FROM pri_zwei.zhenkunfu_web;
SELECT * FROM pri_zwei.zhenkunfu_store_mobile order by 1 desc;
SELECT distinct loc_number FROM pri_zwei.zhenkunfu_web;

SELECT count(1), count(distinct loc_number) FROM pri_zwei.zhenkunfu_web;