# brazil

SELECT * FROM zwei.agg_mercado_brand_br order by 1 desc;

SELECT * FROM zwei.agg_mercado_brand_br where cate2_id = 'MLB5452' order by 1 desc;

SELECT sum(GMV), sum(volume),count(1), rundate FROM zwei.agg_mercado_brand_br where cate2_id = 'MLB5452'  group by rundate  order by rundate desc;

select A.brand_name, B.brand_name, A.GMV, B.GMV, A.Volume, B.Volume from 
(select * from zwei.agg_mercado_brand_br where cate2_id = 'MLB5452' and rundate = '2018-08-02 11:01:34') as A left join
(select * from zwei.agg_mercado_brand_br where cate2_id = 'MLB5452' and rundate = '2018-08-09 12:12:24') as B 
on A.brand_name = B.brand_name where B.brand_name is null;

SELECT * FROM zwei.agg_mercado_brand_br where brand_name = '3 PONTOS ANEIS' order by 1 desc;

SELECT * FROM pri_zwei.mercado_brand_agg where cate2_name != 'Outros' and volume > 100 order by 1 asc;

select cate1_name, cate2_name ,count(1) from pri_zwei.mercado_brand_agg group by cate2_name ;




 
### delete from zwei.agg_mercado_brand_br where rundate = '2018-08-09 12:12:24' limit 100000
