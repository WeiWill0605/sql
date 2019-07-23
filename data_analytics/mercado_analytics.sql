select * from mercado_product where sell_count > 0  order by product_price  desc;

select count(1), rundate from  mercado_category group by rundate ;

select * from mercado_category order by 1 desc;

select * from zwei.mercado_product where cate_id = 'MLB264340' ;


select * from pri_zwei.mercado_brand_agg where GMV is null order by 1 desc;