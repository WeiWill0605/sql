select * from srs.canada_goose_product order by 1 desc;
select * from srs.canada_goose_product where rundate = (select max(rundate) from  srs.canada_goose_product ) order by 1 desc;
select count(distinct product_id), category, gender, country from srs.canada_goose_product 
where rundate = (select max(rundate) from  srs.canada_goose_product ) group by country, gender, category order by 1 desc;
select count(1), rundate  from srs.canada_goose_product group by rundate  order by rundate  desc;