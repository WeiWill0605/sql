SELECT * FROM great_wall.ca_cannabis_store order by 1 desc;
SELECT * FROM great_wall.ca_cannabis_store where province = 'british_columbia'  order by 1 desc;
SELECT * FROM great_wall.ca_cannabis_store where rundate = (select max(rundate) from great_wall.ca_cannabis_store  );
 
SELECT count(1), rundate FROM great_wall.ca_cannabis_store group by rundate desc ;

SELECT distinct province FROM great_wall.ca_cannabis_store where rundate = '2019-11-20 16:32:08' order by 1 desc;
SELECT distinct province FROM great_wall.ca_cannabis_store where rundate = '2019-11-19 17:30:07' order by 1 desc;