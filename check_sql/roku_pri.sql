SELECT * FROM srs.roku order by 1 desc;
SELECT * FROM srs.roku  order by 1 desc;
SELECT * FROM srs.roku where price != '0.00' order by 1 desc;
SELECT * FROM srs.roku where country = 'uk' order by 1 asc;
SELECT * FROM srs.roku where rundate = (select max(rundate) from srs.roku ) order by 1 desc;
SELECT count(1), rundate  FROM srs.roku group by rundate  order by 2 desc;