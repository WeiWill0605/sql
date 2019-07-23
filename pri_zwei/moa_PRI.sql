
SELECT * FROM pri_zwei.moa_market order by 1 desc;

select A.*, B.province_name from 
(select * from pri_zwei.moa_product) as A join 
(select * from pri_zwei.moa_market where rundate = (select max(rundate) from pri_zwei.moa_market )) as B
on A.market_code = B.market_code ;

SELECT * FROM pri_zwei.moa_variety order by 1 desc;
SELECT * FROM pri_zwei.moa_product order by 1 desc;

select * from pri_zwei.moa_product order by 1 desc;
select count(distinct(product_name)), rundate from moa_product group by rundate order by 2 desc;

select count(distinct(product_name)), product_code, max(product_name) from pri_zwei.moa_product group by product_code order by 2 desc;
SELECT count(1), rundate FROM pri_zwei.moa_product group by rundate order by 2 desc;

select * from pri_zwei.moa_product where market_name = '海南凤翔蔬菜批发市场' order by 1 desc; 