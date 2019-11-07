select * from eventlogs.event_jobs51action order by 1 desc;

select count(1), Subject  from eventlogs.event_jobs51action where runId = 3594 and SeverityID > 2 group by Subject order by 2 desc ;

select * from eventlogs.event_jobs51action where subject = 'processing province' and runid = 2055 order by 1 desc;

select * from eventlogs.event_jobs51action where subject = 'result count > 10000' order by 1 desc;

select * from pri_zwei.51job_telephone order by 1 desc;


select * from 51job_area where level = 1 order by 1 asc;














