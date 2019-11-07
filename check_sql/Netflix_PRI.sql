SELECT count(1), rundate FROM great_wall.netflix_plan group by rundate order by 2 desc;

SELECT count(1), rundate FROM great_wall.netflix_plan_endpoint group by rundate order by 2 desc;

SELECT count(1), rundate FROM great_wall.netflix_plan_merge group by rundate order by 2 desc;


select * from great_wall.netflix_plan order by 1 desc;

SELECT * FROM great_wall.netflix_plan_endpoint order by 1 desc;

SELECT * FROM great_wall.netflix_plan_merge order by 1 desc;


SELECT * FROM great_wall.netflix_plan order by 1 desc;


SELECT * FROM great_wall.netflix_plan where country_code = 'GR' order by 1 desc;


SELECT * FROM pri_zwei.netflix_page order by 1 desc;

SELECT country_code, locale_id, browser_type, Rundate FROM pri_zwei.netflix_page order by 1 desc;



SELECT count(1), country_code FROM great_wall.netflix_plan  where date(Rundate) = date(now())  group by country_code order by 1 asc;


SELECT count(1), rundate FROM great_wall.netflix_plan_merge group by rundate order by 2 desc;

SELECT count(1), date(rundate) FROM pri_zwei.netflix_plan_merge group by date(rundate) order by 2 desc;



SELECT count(1), rundate FROM pri_zwei.netflix_page group by rundate order by 2 desc;

SELECT count(1), rundate FROM pri_zwei.netflix_page_endpoint group by rundate order by 2 desc;


SELECT * FROM pri_zwei.netflix_plan where rundate = (select max(rundate) from pri_zwei.netflix_plan  );

SELECT * FROM pri_zwei.netflix_page_endpoint order by 1 desc;

SELECT * FROM pri_zwei.netflix_plan_endpoint where rundate = '2019-01-11 19:02:47' order by 1 desc;


SELECT * FROM pri_zwei.netflix_plan_endpoint where price is null or currency is null order by 1 desc;