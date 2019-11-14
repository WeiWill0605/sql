select * from srs.foot_locker_best_sell order by 1 desc;
select distinct scan_date from srs.foot_locker_best_sell where rundate >= '2019-11-5 10:42:05' order by 1 desc;
select count(1), rundate  from srs.foot_locker_best_sell group by rundate  order by 2 desc;


