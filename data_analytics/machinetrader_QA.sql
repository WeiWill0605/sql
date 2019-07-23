select count(1), rundate from pr01.machinetrader_product group by rundate order by 2 desc;


select count(1), runid from pr01.machinetrader_product_stg group by runid order by 2 desc;

select * from pr01.machinetrader_product_stg order by 1 desc;

select * from pr01.machinetrader_product_stg where brand is null;
select * from pr01.machinetrader_product_stg where PRICE_RAW is null;
select * from pr01.machinetrader_product_stg where length(PRICE_RAW) > 15;

select * from pr01.machinetrader_product_stg where model is null;

select * from pr01.machinetrader_product_stg order by MINIMUM_PRICE desc;

#UPDATE pr01.machinetrader_product_stg SET pr01.machinetrader_product_stg.rundate = (SELECT min(RunDate) FROM (SELECT RunDate FROM  pr01.machinetrader_product_stg) AS T);

#UPDATE pr01.machinetrader_product_stg SET pr01.machinetrader_product_stg.runid = (SELECT min(runid) FROM (SELECT runid FROM  pr01.machinetrader_product_stg) AS T);
