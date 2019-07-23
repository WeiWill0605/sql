select * from pri_zwei.iqiyi_play_index order by 1 desc;
select * from pri_zwei.iqiyi_play_index where album_id = '996823500' order by 1 desc;

select * from pri_zwei.iqiyi_play_index group by rundate  order by 1 desc;

SELECT count(1), rundate FROM pri_zwei.iqiyi_play_index group by rundate  order by 2 desc;


