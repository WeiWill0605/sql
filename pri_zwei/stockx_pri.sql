SELECT * FROM srs.stockx_product order by 1 desc;
SELECT count(1), rundate FROM srs.stockx_product group by rundate  order by 2 desc;
SELECT count(1), count(distinct product_id) FROM srs.stockx_product order by 1 desc;
SELECT count(1), category FROM srs.stockx_product group by category order by 1 desc;

SELECT * FROM srs.stockx_transaction where product_id = '' ;