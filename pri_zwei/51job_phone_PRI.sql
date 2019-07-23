select * from zwei.51job_info_phone  order by 1 desc;

select count(1) from zwei.51job_info_phone where rundate = '2018-07-17 14:38:12' order by 1 desc;

select count(1), province from zwei.51job_info_phone where rundate = '2018-07-12 15:05:23' group by province order by 2 desc;

##select *  from zwei.51job_info_phone where rundate = '2018-07-12 15:05:23' and province = '深圳';

select count(distinct(phone))  from zwei.51job_info_phone where phone is not null and rundate > '2018-07-12 15:05:22' ;


select count(1), phone from  zwei.51job_info_phone group by phone order by 1 desc;

select count(1), rundate from zwei.51job_info_phone group by rundate order by 2 desc;

select * from zwei.51job_info_phone where rundate < '2018-07-12 15:05:22' ;


select * from zwei.51job_info_phone where rundate > '2018-07-12 15:05:22' ;

select count(distinct(A.phone)) from 
(select province, company_name, job_info, phone, company_id  from zwei.51job_info_phone where rundate > '2018-07-12 15:05:22' and phone is not null)  as A left join   
(select province, company_name, job_info, phone, company_id  from zwei.51job_info_phone where rundate < '2018-07-12 15:05:22' and phone is not null)  as B on A.phone = B.phone
where B.phone is null;







select * from zwei.51job_info_phone where phone = '13971104187';








