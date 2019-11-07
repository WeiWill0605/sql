select * from pr01.truckpaper_todo_list ;

select url, result_count from pr01.truckpaper_todo_list where rundate = '2018-09-19 01:01:03' and result_count < 100 and search_type = 'For Sale' and result_count >-1 order by 1 desc;

select * from pr01.truckpaper_todo_list where cat_name = 'Agriculture Equipment Transport Trailers'  order by 1 desc;



select * from pr01.tractorhouse_product where CATEGORY_NAME = 'Agriculture Equipment Transport Trailers' order by 1 desc;



select count(1), count(distinct(sku)) from pr01.truckpaper_product_stg where CATEGORY_NAME =  'Oil Field Trailers';

select count(1), rundate from pr01.truckpaper_product_stg group by rundate;

select count(1), count(distinct(concat(sku, CONDITIONS))), CATEGORY_NAME from pr01.truckpaper_product_stg group by CATEGORY_NAME;