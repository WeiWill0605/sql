SELECT * FROM srs.splunk_app order by 1 desc;
SELECT * FROM srs.splunk_app_category order by 1 desc;
SELECT * FROM srs.splunk_app where rundate = (select max(rundate) from srs.splunk_app ) and reviews is null order by 1 desc;
SELECT count(1), rundate  FROM srs.splunk_app group by rundate  order by 2 desc;
SELECT count(1), rundate  FROM srs.splunk_app_category group by rundate  order by 2 desc;