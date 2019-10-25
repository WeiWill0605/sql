select * from great_wall.googlerank_product order by 1 desc;
select * from great_wall.googlerank_product_daily where rundate = '2019-10-20 03:01:08'  order by 1 desc;
SELECT count(1), rundate FROM great_wall.googlerank_product group by rundate order by 2 desc;
SELECT count(1), rundate FROM great_wall.googlerank_product_daily group by rundate order by 2 desc;

select rundate as scandate,keywordid,keywordname,url,domain,page,panel,position,title,ispicture,type
 FROM great_wall.googlerank_product where rundate = (select(max(rundate)) from great_wall.googlerank_product ) ;

select count(1), type FROM great_wall.googlerank_product where rundate = '2019-03-06 11:56:02'  group by type ;

