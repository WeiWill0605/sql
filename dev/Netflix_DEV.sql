select * from eventlogs.event_netflixvpnaction  order by 1 desc;
select * from eventlogs.event_netflixendpointaction order by 1 desc;

select * from eventlogs.event_netflixvpnaction where runid =6604   order by 1 desc;
select * from eventlogs.event_netflixvpnaction where runid =7574 and SeverityID > 2   order by 1 desc;

select * from eventlogs.event_netflixvpnaction where eventId >= 11210 order by 1 asc;



SELECT * FROM great_wall.netflix_plan order by 1 desc;
SELECT * FROM pri_zwei.netflix_plan_merge order by country_code desc;
SELECT * FROM pri_zwei.netflix_plan_endpoint order by 1 desc;

select * from eventlogs.event_netflixaction where RunID = '1548583201' and Details like 'process%';

select * from eventlogs.event_netflixaction where RunID = '1548583201' and Details like 'start to process country%';
SELECT count(1), rundate FROM pri_zwei.netflix_plan group by rundate order by 2 desc;
SELECT count(1), rundate FROM pri_zwei.netflix_plan_endpoint group by rundate order by 2 desc;
SELECT count(1), rundate FROM pri_zwei.netflix_plan_merge group by rundate order by 2 desc;

select count(1), country, Rundate from pri_zwei.netflix_plan where rundate >= '2019-01-07 21:56:50' group by country, Rundate order by 1 desc;


SELECT * FROM pri_zwei.netflix_plan where country = 'at' order by 1 desc;

SELECT count(1), rundate FROM pri_zwei.netflix_plan where country = 'at' group by Rundate order by 2 desc;
