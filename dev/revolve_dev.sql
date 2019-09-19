select * from eventlogs.event_revolveaction order by 1 desc;
select * from eventlogs.event_revolveaction where RunID = '10322' and SeverityID > 2  order by 1 desc;

SELECT * FROM srs.revolve_product where rundate = (select max(rundate) from srs.revolve_product  ) order by 1 desc;
SELECT * FROM srs.revolve_product where rundate = (select max(rundate) from srs.revolve_product  ) and code = 'MKUP-WU3' order by 1 desc;

SELECT count(1), count(distinct code), cateName, department FROM srs.revolve_product where rundate = (select max(rundate) from srs.revolve_product  ) group by cateName, department order by cateName desc;
SELECT count(1), rundate FROM srs.revolve_product group by rundate desc ;

select * from srs.revolve_product_filter_by_designer order by 1 desc;
select * from srs.revolve_product_filter_by_designer where rundate = '2019-08-12 15:47:15' order by 1 desc;

select count(1), count(distinct code), department, designer from srs.revolve_product_filter_by_designer where rundate = '2019-08-12 15:47:15' group by  department, designer ;

SELECT count(1), rundate, department FROM srs.revolve_product_filter_by_designer group by rundate, department desc ;