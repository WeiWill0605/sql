SELECT * FROM great_wall.ca_cannabis_store order by 1 desc;
SELECT * FROM great_wall.ca_cannabis_store where province = 'nova_scotia'  order by 1 desc;
SELECT * FROM great_wall.ca_cannabis_store where rundate = (select max(rundate) from great_wall.ca_cannabis_store  );
 
SELECT count(1), rundate FROM great_wall.ca_cannabis_store group by rundate desc ;
SELECT count(1), rundate FROM great_wall.ca_cannabis_store where province = 'nova_scotia'  group by rundate desc ;