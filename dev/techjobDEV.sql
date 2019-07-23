

select * from eventlogs.event_techjobsaction order by 1 desc;
select * from eventlogs.event_techjobsaction where runid = '9162' and SeverityId > 2 order by 1 desc;

SELECT * FROM pri_zwei.tech_company_list ;

## update pri_zwei.tech_company_list set processed = 1
select * from eventlogs.event_TechJobsHKAction order by 1 desc;

select * from great_wall.tech_company_job order by 1 desc;


select * from eventlogs.event_TechJobsHKAction where runid = '7824' and SeverityId > 2 order by 1 desc;

select * from eventlogs.event_techjobsaction where runid = '5888' and SeverityId > 2 and Subject != 'failed to get page count' order by 1 desc;


SELECT * FROM pri_zwei.tech_company_list;


select * from pri_zwei.tech_company_job order by 1 desc;

select * from pri_zwei.techjobs_product where company = '' and country is null order by 1 desc;

select count(1), rundate from pri_zwei.tech_company_job where company = 'Atlassian' group by rundate order by 2 desc;

select count(1), search_page,  rundate from pri_zwei.techjobs_product where company = 'checkpoint' group by rundate, search_page order by 2 desc;
