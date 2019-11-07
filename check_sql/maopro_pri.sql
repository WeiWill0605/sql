
##play info
select * from pri_zwei.maopro_rank_movie where release_date is null order by 1 desc;

select count(1), rundate from pri_zwei.maopro_rank_movie  group by rundate order by 2 desc;
select count(1),RunDate from pri_zwei.maopro_play_info group by rundate desc;
select count(1),date(play_date) from pri_zwei.maopro_play_info group by date(play_date) desc;




select distinct(movie_name) from pri_zwei.maopro_play_info where platform_type = 1 and play_date < '2018-04-26' order by 1 desc;



select * from pri_zwei.maopro_play_info  order by 1 desc;

select * from pri_zwei.maopro_play_info where  category = 'online movie' order by 1 desc;

select * from pri_zwei.maopro_rank_movie where series_id = '1213042' order by 1 desc;


select count(1), platform_type, movie_name from pri_zwei.maopro_play_info group by platform_type, movie_name order by movie_name desc;




### QA
select * from pri_zwei.maopro_play_info order by 1 desc;
select * from pri_zwei.maopro_play_info  where play_count > 0 order by 1 desc;
select * from pri_zwei.maopro_play_info where series_id = '380700' order by play_date desc;
select * from pri_zwei.maopro_play_info where category = 'online movie' order by 1 desc;
select * from pri_zwei.maopro_rank_movie where category = 'online movie' order by 1 desc;
select * from pri_zwei.maopro_rank_movie order by 1 desc;
select series_id, count(distinct(release_date)) from pri_zwei.maopro_rank_movie group by series_id order by 2 desc;



# online movie
select series_id, min(play_date), max(play_date), count(*) from pri_zwei.maopro_play_info where runid = 1149 and category = 'online movie' group by series_id ;


select A.* from
 (select distinct series_id from pri_zwei.maopro_rank_movie where category = 'online movie') as A join
(select distinct series_id  from pri_zwei.maopro_play_info) as  B on  A.series_id = B.series_id ;




### make sure the max_play date is the date of yesterday
select max(play_date), series_id, max(movie_name) from pri_zwei.maopro_play_info where  category != 'online movie'   group by series_id order by max(play_date) asc;

# group by rank count
select count(1), rundate from pri_zwei.maopro_rank_movie group by rundate order by 2 desc;

###　to exam play_date is continuous 
select count(distinct play_date) as play_date_count, datediff(now(), max(release_date)) as days_past,series_id, movie_name from pri_zwei.maopro_play_info
where category != 'online movie' group by series_id having abs(play_date_count - days_past)>1 ;


### order by play_date
select play_date, count(distinct series_id) from pri_zwei.maopro_play_info where category != 'online movie' group by play_date order by 1 desc;

select * from (select distinct(series_id) from pri_zwei.maopro_play_info where category != 'online movie' and play_date = '2018-09-24') A left join 
(select  distinct(series_id) from pri_zwei.maopro_play_info where category != 'online movie' and play_date = '2018-09-25')B on A.series_id = B.series_id 
where B.series_id is null;

select count(1), count(distinct(series_id)) from pri_zwei.maopro_play_info where play_date = '2018-09-25' and category != 'online movie';
select count(1), count(distinct(series_id)) from pri_zwei.maopro_play_info where play_date = '2018-09-24' and  category != 'online movie';




### report data

select *from pri_zwei.maopro_play_info group by series_id  having release_date < min(play_date)  order by 1 desc;

select play_date, platform_type, sum(play_count)  from pri_zwei.maopro_play_info  where category != 'online movie' and play_count > 0 group by platform_type, play_date order by platform_type, play_date asc ;

select * from pri_zwei.maopro_play_info where platform_type = 1 and play_date = '2018-04-01';





select * from pri_zwei.maopro_rank_movie where series_id = '1238730'  order by 1 desc;
select * from pri_zwei.maopro_play_info where series_id = '1221130'  order by 1 desc;


select max(release_date) from pri_zwei.maopro_rank_movie where series_id = '1213042'  order by 1 desc;


select * from pri_zwei.maopro_play_info where play_date in ('2018-09-25', '2018-09-24') and  series_id in ('1213042', '1221130');





select * from pri_zwei.maopro_iqiyi_heat where series_id = 1200712 order by 1 desc;




