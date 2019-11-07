select * from pri_zwei.tech_company_job order by 1 desc;
select count(1) from pri_zwei.tech_company_job where rundate = '2019-11-05 14:18:36' order by 1 desc;
select * from pri_zwei.tech_company_list order by 1 desc;


SELECT * FROM pri_zwei.tech_company_job where company is null and rundate = '2019-03-13 09:51:04' order by 1 desc;

SELECT tid, company, job_id, job_dept, job_title, job_loc, city, country, num_jobs, RunID, RunDate, InsertUpdateTime FROM pri_zwei.tech_company_job order by 1 desc;


SELECT count(1), rundate FROM pri_zwei.tech_company_job group by RunDate order by 2 desc;


SELECT count(distinct company), rundate FROM pri_zwei.tech_company_job group by RunDate order by 2 desc;

#'akamai,Splunk, ultipro'
select * from pri_zwei.tech_company_job where company = 'cloudera' order by 1 desc;
select * from pri_zwei.tech_company_job where company = 'Proofpoint' and RunDate = '2019-06-11 01:01:09' order by 1 desc;

SELECT count(1), rundate FROM pri_zwei.tech_company_job where company = 'etsy' group by RunDate order by 2 desc;

SELECT count(1), company FROM pri_zwei.tech_company_job where RunDate = (select max(rundate) from pri_zwei.tech_company_job ) group by company order by 2 desc;



SELECT count(1), company FROM pri_zwei.tech_company_job where RunDate = '2019-07-09 09:38:36' group by company order by 2 desc;

select * from 
(select distinct company FROM pri_zwei.tech_company_job where rundate = '2019-07-16 01:01:09') as A right join
(select distinct company FROM pri_zwei.tech_company_job where rundate = '2019-07-09 09:38:36') as B on A.company = B.company where a.company is null;


###### update pri_zwei.tech_company_job set rundate = '2019-11-05 01:19:10' where rundate = '2019-11-05 14:18:36'
