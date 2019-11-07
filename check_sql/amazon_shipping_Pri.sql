SELECT * FROM srs.amazon_shopping_category order by 1 desc;
SELECT * FROM srs.amazon_shopping_category where cat3_id = '15719571' and cat_level = 3 order by 1 desc;
SELECT * FROM srs.amazon_shopping_category order by 1 desc;
SELECT * FROM srs.amazon_shopping_category where rundate = (select max(rundate) from srs.amazon_shopping_category ) order by 1 desc;
SELECT count(1) FROM srs.amazon_shopping_category where rundate = (select max(rundate) from srs.amazon_shopping_category ) and cat_level <=3 order by 1 desc;

SELECT count(1), rundate FROM srs.amazon_shopping_category where cat1_id = '15684181' group by rundate  order by 2 desc;
SELECT * FROM srs.amazon_shopping_category where cat2_name = 'Furniture' order by 1 desc;
SELECT * FROM srs.amazon_shopping_category where cat3_id = '2422430011' order by 1 desc;
SELECT * FROM srs.amazon_shopping_category where count is null order by 1 desc;
SELECT count(1), rundate FROM srs.amazon_shopping_category  group by rundate order by 2 desc;
SELECT count(1), rundate FROM srs.amazon_shopping_category where count is null group by rundate order by 2 desc;

select rundate, cat1_name,  sum(count) from srs.amazon_shopping_category  group by  rundate , cat1_name;
select rundate, cat2_name,  sum(count) from srs.amazon_shopping_category  group by  cat2_name,  rundate;


select A.cat3_name, A.cat3_id, A.source_url,   A.count,  B.count,  B.cat3_id, B.cat3_name, B.source_url, abs(a.count - b.count) / b.count as ratio_fluct from 
(select * from  srs.amazon_shopping_category where rundate = '2019-08-02 22:45:29') as A 
join 
(select * from  srs.amazon_shopping_category where rundate = '2019-08-03 10:49:19' ) as B 
on A.cat1_id = B.cat1_id 
and A.cat2_id = B.cat2_id and A.cat3_id = B.cat3_id
#where A.cat3_id is null and B.cat3_id is null 
order by ratio_fluct desc
;