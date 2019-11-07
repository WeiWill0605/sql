SELECT * FROM eventlogs.event_techjobsaction ORDER BY 1 DESC;
SELECT * FROM eventlogs.event_techjobsaction WHERE runid = '14076' AND SeverityId > 2 ORDER BY 1 DESC;

SELECT * FROM pri_zwei.tech_company_list ;

## update pri_zwei.tech_company_list set processed = 1
SELECT * FROM eventlogs.event_TechJobsHKAction ORDER BY 1 DESC;

SELECT * FROM great_wall.tech_company_job ORDER BY 1 DESC;


SELECT * FROM eventlogs.event_TechJobsHKAction WHERE runid = '7824' AND SeverityId > 2 ORDER BY 1 DESC;

SELECT * FROM eventlogs.event_techjobsaction WHERE runid = '5888' AND SeverityId > 2 AND SUBJECT != 'failed to get page count' ORDER BY 1 DESC;


SELECT * FROM pri_zwei.tech_company_list;


SELECT * FROM pri_zwei.tech_company_job ORDER BY 1 DESC;

select * from pri_zwei.techjobs_product where company = '' and country is null order by 1 desc;

select count(1), rundate from pri_zwei.tech_company_job where company = 'Atlassian' group by rundate order by 2 desc;

select count(1), search_page,  rundate from pri_zwei.techjobs_product where company = 'checkpoint' group by rundate, search_page order by 2 desc;
