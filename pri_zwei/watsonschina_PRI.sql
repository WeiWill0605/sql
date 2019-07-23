
select * from pri_zwei.watsonschina order by 1 desc;

SELECT count(1),RunDate FROM pri_zwei.watsonschina group by RunDate order by Rundate desc;

SELECT count(1),city, runDate FROM pri_zwei.watsonschina group by RunDate, city order by city desc, RunDate desc ;



select * from (select * from pri_zwei.watsonschina where rundate = '2018-12-11 14:43:18' ) as A left join 
(select * from pri_zwei.watsonschina where rundate = '2018-11-17 09:44:21' ) as B on A.loc_name = B.loc_name where B.loc_name is null;



select A.* from (select * from pri_zwei.watsonschina where rundate = '2018-06-25 17:18:05' ) as A left join 
(select * from pri_zwei.watsonschina where rundate = '2018-08-17 15:35:58') as B on A.loc_id = B.loc_id where B.loc_name is null;




select count(1) from  pri_zwei.watsonschina where loc_id is Null;