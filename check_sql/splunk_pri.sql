SELECT * FROM srs.splunk_app order by 1 desc;
SELECT * FROM srs.splunk_app_detail order by 1 desc;
SELECT * FROM srs.splunk_app_category order by 1 desc;

SELECT * FROM srs.splunk_app_detail where id = '4127' order by 1 desc;


SELECT * FROM srs.splunk_app_detail where rundate = (select max(rundate) from srs.splunk_app_detail ) order by downloads desc;
SELECT * FROM srs.splunk_app_detail where rundate = (select max(rundate) from srs.splunk_app_detail ) and (reviews is null or installs is null or downloads is null )order by 1 desc;

SELECT count(1), rundate  FROM srs.splunk_app group by rundate  order by 2 desc;
SELECT count(1), sum(reviews), sum(installs), sum(downloads),  rundate  FROM srs.splunk_app_detail group by rundate  order by rundate desc;

select * from 
(select * from srs.splunk_app_detail  where rundate = '2019-11-21 07:01:01') as A 
left join 
(select * from srs.splunk_app_detail  where rundate = '2019-11-20 19:31:31') as B 
on A.id = B.id 
where (A.installs < B.installs or A.downloads < B.downloads) ;



SELECT count(distinct id) FROM srs.splunk_app ;
SELECT count(1), rundate  FROM srs.splunk_app_category group by rundate  order by 2 desc;