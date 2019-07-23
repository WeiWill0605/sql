select * from int_share_01.zillow order by 1 desc;
select count(1), rundate  from int_share_01.zillow group by rundate  order by 2 desc;

SELECT * FROM int_share_01.zillow_property_detail  order by 1 desc;

SELECT count(1), count(distinct(property_id)) FROM int_share_01.zillow_property_detail  order by 1 desc;

SELECT * FROM int_share_01.zillow_property_detail where is_zillow_owned = 1  order by 1 desc;
SELECT * FROM int_share_01.zillow_property_detail where isinstantofferenabled >0 order by 1 desc;

SELECT * FROM int_share_01.zillow_daily where length(listing_provided_by) < 2 order by 1 desc;

select count(distinct(property_id)) from int_share_01.zillow where zillow_owned = 1;

SELECT * FROM int_share_01.zillow_property_detail where is_zillow_owned = 1;

SELECT * FROM int_share_01.zillow_daily where postcode = 89148;

SELECT posting_url, address, rstate, postcode, lower(concat(replace(address, ' ','-'), '-', rstate, '-', postcode)) FROM int_share_01.zillow_daily where posting_url like '%opendoor%' or listing_provided_by like '%opendoor%' or
        listing_provided_by like '%offerpad%' or  posting_url like '%bairgroup%' ;
        
start transaction;
#update int_share_01.zillow_daily set address_slug = lower(concat(replace(address, ' ','-'), '-', rstate, '-', postcode)) 
commit;

SELECT * FROM int_share_01.zillow_daily where posting_url like '%opendoor%' or listing_provided_by like '%opendoor%' or
        listing_provided_by like '%offerpad%' or  posting_url like '%bairgroup%'  or zillow_owned = 1