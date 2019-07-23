select * from int_share_01.yunji_product order by 1 desc;
select * from int_share_01.yunji_product where rundate = (select max(rundate) from  int_share_01.yunji_product ) ;
select count(1), rundate from int_share_01.yunji_product group by rundate desc;