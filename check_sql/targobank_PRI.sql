
# select block
SELECT * FROM pri_zwei.targobank ;
SELECT * FROM pri_zwei.targobank order by 1 desc;
SELECT count(1), RunDate FROM pri_zwei.targobank group by rundate order by 2 desc;
SELECT count(1), RunDate FROM pri_zwei.targobank_all group by rundate order by 2 desc;
SELECT count(1), RunDate FROM pri_zwei.targobank where loc_type= 'branch' group by rundate order by 2 desc;
SELECT count(1), RunDate FROM pri_zwei.targobank where loc_type= 'atm' group by rundate order by 2 desc;

## QA 
select * from pri_zwei.targobank where RunDate = '2018-08-17 15:59:46' and loc_type = 'atm' order by 1 desc;
select * from pri_zwei.targobank  where loc_type= 'branch'  order by 1 desc;


SELECT count(1), RunDate FROM pri_zwei.targobank group by rundate order by 2 desc;



select count(1), rundate from pri_zwei.targobank  where  bank_code in (99999, 02236)  and loc_type = 'atm' group by rundate order by 2 desc; 


select * from (select * from pri_zwei.targobank where rundate = '2018-04-25 16:45:43' and loc_type = 'branch')as A left join 
 (select * from pri_zwei.targobank where rundate = '2018-06-05 16:48:22' and loc_type = 'branch')as B on A.loc_number = B.loc_number where B.loc_number is null;

set @rundate_2 := '2018-12-12 16:56:34';
set @rundate_1 := '2018-11-17 09:59:30';

select A.* from (select * from pri_zwei.targobank where rundate = @rundate_1  and loc_type = 'branch' )as A left join 
 (select * from pri_zwei.targobank where rundate = @rundate_2 and loc_type = 'branch'  )as B
 on concat(A.loc_name, A.address_2, A.address_3) = concat(B.loc_name, B.address_2, B.address_3)
 where B.tid is null limit 10;

SELECT * FROM pri_zwei.targobank where rundate = @rundate_1 and address_1 is not null  order by 1 desc;
SELECT * FROM pri_zwei.targobank where rundate = @rundate_2 and address_1 is not null order by 1 desc;

select * from pri_zwei.targobank where loc_number = '00078(00)';


