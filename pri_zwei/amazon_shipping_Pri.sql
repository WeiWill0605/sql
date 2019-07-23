SELECT * FROM srs.amazon_shopping_category order by 1 desc;
SELECT * FROM srs.amazon_shopping_category where cat2_name = 'Furniture' order by 1 desc;
SELECT * FROM srs.amazon_shopping_category where cat3_id = '2422430011' order by 1 desc;
SELECT * FROM srs.amazon_shopping_category where count is null order by 1 desc;
SELECT count(1), rundate FROM srs.amazon_shopping_category  group by rundate order by 2 desc;
SELECT count(1), rundate FROM srs.amazon_shopping_category where count is null group by rundate order by 2 desc;

select rundate, cat1_name,  sum(count) from srs.amazon_shopping_category  group by  rundate , cat1_name;
select rundate, cat2_name,  sum(count) from srs.amazon_shopping_category  group by  cat2_name,  rundate;