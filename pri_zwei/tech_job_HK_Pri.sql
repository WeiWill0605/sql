SELECT * FROM great_wall.tech_company_job order by 1 desc;
SELECT count(1), rundate FROM great_wall.tech_company_job group by RunDate order by 2 desc;


select count(1), company from great_wall.tech_company_job
        where RunDate = (select max(RunDate) from great_wall.tech_company_job) 
        group by rundate, company  order by rundate desc;