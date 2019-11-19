SELECT * FROM great_wall.tech_company_job  order by 1 desc;
SELECT count(1), rundate FROM great_wall.tech_company_job group by RunDate order by 2 desc;

SELECT count(distinct company), rundate FROM great_wall.tech_company_job group by RunDate order by 2 desc;


select count(1), company, rundate from great_wall.tech_company_job
        #where RunDate < (select max(RunDate) from great_wall.tech_company_job) 
        where rundate <= '2019-11-05 01:01:08' and rundate >= '2019-10-29 01:01:05'
        group by rundate, company  order by rundate desc;