SELECT * FROM great_wall.google_trends_search_strings order by 1 desc;
SELECT * FROM great_wall.goolge_trends_interest_over_time order by 1 desc;
SELECT * FROM great_wall.goolge_trends_interest_over_time where rundate = '2019-11-21 12:30:11' and  search_string_id = '91' order by 1 desc;


SELECT count(1), count(distinct search_string_text, geo), count(distinct id) FROM great_wall.google_trends_search_strings order by 1 desc;

SELECT * FROM great_wall.goolge_trends_interest_over_time 
where rundate = (select max(rundate) from great_wall.goolge_trends_interest_over_time)
 order by 1 desc;
 
 
 SELECT count(1), search_string_id FROM great_wall.goolge_trends_interest_over_time 
where rundate = (select max(rundate) from great_wall.goolge_trends_interest_over_time)
 group by search_string_id order by 1 desc;


SELECT count(1), rundate FROM great_wall.goolge_trends_interest_over_time  group by rundate desc;


SELECT count(1), count(distinct search_string_id),  rundate FROM great_wall.goolge_trends_interest_over_time group by rundate desc;