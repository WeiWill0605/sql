SELECT * FROM srs.revolve_product order by 1 desc; 
SELECT * FROM srs.revolve_product where rundate = (select max(rundate) from srs.revolve_product);

SELECT count(1), count(distinct code), rundate  FROM srs.revolve_product  group by rundate  order by rundate desc; 

SELECT count(1), count(distinct code), rundate  FROM srs.revolve_product  group by rundate  order by 2 desc; 


SELECT count(1), rundate, department FROM srs.revolve_product_filter_by_designer group by rundate, department desc ;



