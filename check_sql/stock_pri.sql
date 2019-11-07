SELECT * FROM srs.stock_price order by 1 desc;
SELECT * FROM srs.stock_price where company_name = 'ultipro'  order by date desc;
SELECT * FROM srs.stock_price where company_name = 'RingCentral' and date = '2014-03-02'  order by date desc;

SELECT count(1), date FROM srs.stock_price where company_name = 'intuit' group by date  order by 1 desc;

SELECT count(1), rundate FROM srs.stock_price group by rundate order by 2 desc;
SELECT count(1), count(distinct date), company_name FROM srs.stock_price group by company_name order by 3 desc;


