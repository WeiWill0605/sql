SELECT * FROM pri_zwei.maopro_network_heat_rank  order by 1 desc;

SELECT count(1), rundate FROM pri_zwei.maopro_network_heat_rank group by rundate order by 2 desc;

SELECT * FROM pri_zwei.maopro_network_heat order by 1 desc;
SELECT count(1), rundate FROM pri_zwei.maopro_network_heat group by rundate order by 2 desc  ;


SELECT count( distinct series_id) FROM pri_zwei.maopro_network_heat;

select * from pri_zwei.maopro_network_heat where series_id = 1182382  order by 1 asc;

SELECT count(1), series_id FROM pri_zwei.maopro_network_heat group by series_id order by 1 desc  ;

select series_id,  count(1) as data_row_count , datediff(max(play_date), min(play_date)) + 1 as days_count, 
count(1) -  datediff(max(play_date), min(play_date)) - 1 as row_diff
 from pri_zwei.maopro_network_heat group by series_id having  row_diff != 0 ;





SELECT * FROM pri_zwei.maopro_network_heat where network_heat is null ;


select * from pri_zwei.maopro_network_heat_rank where rundate = '2019-01-29 03:01:07' and category = 'online drama' order by 1 desc;

select count(1), platform_input, RunDate from  pri_zwei.maopro_network_heat_rank  group by platform_input, rundate order by platform_input, rundate desc ;


select count(1), count(distinct series_id), rundate from  pri_zwei.maopro_network_heat_rank group by rundate order by rundate desc;