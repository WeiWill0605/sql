SELECT * FROM great_wall.google_trends_search_strings;

SELECT * FROM great_wall.goolge_trends_interest_over_time order by 1 desc;
SELECT count(1), rundate FROM great_wall.goolge_trends_interest_over_time group by rundate desc;