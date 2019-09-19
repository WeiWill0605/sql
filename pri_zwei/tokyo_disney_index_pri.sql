SELECT * FROM srs.tokyo_disney_index order by 1 desc;
SELECT count(1), rundate FROM srs.tokyo_disney_index group by rundate  order by 2 desc;

SELECT count(1), weather_code FROM srs.tokyo_disney_index group by weather_code  order by 2 desc;

SELECT count(1), count(distinct date), attraction_name FROM srs.tokyo_disney_index group by attraction_name order by 2 desc;
