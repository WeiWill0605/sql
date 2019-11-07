SELECT * FROM eventlogs.event_hapinessinsuranceaction order by 1 desc;


select * from pri_zwei.happy_insurance_locations order by 1 desc;


SELECT count(1), rundate FROM pri_zwei.happy_insurance_locations group by rundate order by 2 desc;