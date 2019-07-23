select * from pri_zwei.iqiyi_official_rank order by 1 desc;
select * from pri_zwei.iqiyi_official_heat order by 1 desc;

select count(1), rundate from pri_zwei.iqiyi_official_rank group by rundate order by 2 desc;

select count(distinct(album_id)) from pri_zwei.iqiyi_official_rank;
select count(1), rundate from pri_zwei.iqiyi_official_heat group by rundate order by 2 desc;

select * from pri_zwei.iqiyi_official_rank where album_id = '926399400';
select * from pri_zwei.iqiyi_official_heat where album_id = '926399400' order by 1 desc;