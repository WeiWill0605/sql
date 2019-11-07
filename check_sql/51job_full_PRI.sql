select * from zwei.51job_area where city_id in ('030204', '040300', '021000') or area_id in ('030204', '040300', '021000')  ;


SELECT * FROM zwei.51job_info_full order by 1 desc;

SELECT count(1), count(distinct(job_id)), area_id FROM zwei.51job_info_full where rundate = '2018-10-10 18:01:15' and  area_id in ('030204', '040300', '021000') group by area_id  order by 2 desc;

select count(1), rundate FROM zwei.51job_info_full group by rundate order by 2 desc;

SELECT * FROM zwei.51job_info_full where job_name like '%电话销售%' group by company_id having count(1) < 2 order by 1 desc;

select count(distinct(company_id)) from zwei.51job_info_full where job_name like '%电话销售%' ;
