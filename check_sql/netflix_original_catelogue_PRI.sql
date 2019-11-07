SELECT * FROM pri_zwei.netflix_originals_catalogue order by 1 desc;
SELECT * FROM pri_zwei.netflix_originals_catalogue where id = '314404' order by 1 desc;



select * from pri_zwei.netflix_originals_catalogue where rundate = (select max(rundate) from pri_zwei.netflix_originals_catalogue );

SELECT count(1), rundate FROM pri_zwei.netflix_originals_catalogue group by rundate order by 2 desc;

select * from 
(select distinct id from  pri_zwei.netflix_originals_catalogue where rundate = '2019-04-10 03:01:11') as A right join
(select distinct id from  pri_zwei.netflix_originals_catalogue where rundate < '2019-04-10 03:01:11') as B  on A.id = B.id where A.id is null;
