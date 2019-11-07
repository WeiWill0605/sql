### event block
select * from eventlogs.event_targobankaction order by 1 desc;

select * from eventlogs.event_targobankaction where runid = 4123 and SeverityID > 1 order by 1 desc;
select * from eventlogs.event_targobankaction where subject like '%total atms%' and runid = 768  order by 1 desc;

select count(*) from eventlogs.event_targobankaction where subject = 'processing' and runId = 660;


# select block
SELECT * FROM pri_zwei.targobank;
SELECT * FROM pri_zwei.targobank order by 1 desc;

SELECT * FROM pri_zwei.targobank where runid = 761;
SELECT * FROM pri_zwei.targobank where bank_group = 'TBK' and loc_number != '00000(00)' order by 1 desc;
select * from pri_zwei.targobank  where  bank_code in (99999, 02236) order by 1 desc; 

## QA 
select count(*), runid from pri_zwei.targobank group by rundate order by rundate desc ; 

SELECT count(1), RunDate FROM pri_zwei.targobank group by rundate order by 1 desc;

select count(*) from pri_zwei.targobank where rundate = '2018-05-02 11:17:21' order by 1 desc;
select count(*) from pri_zwei.targobank_all where bank_code in ('99999', '02236');

select count(*) from pri_zwei.targobank where bank_group in('TBK', 'CSP') and loc_number != '00000(00)' and runID = 772;

select count(*), runid from pri_zwei.targobank where bank_group in('TBK', 'CSP') and loc_number != '00000(00)' group by runid;


select count(*), RunDate from pri_zwei.targobank group by RunDate;


select A.source_url, A.loc_name, A.city, A.postal_code, A.address_3 from (select * from pri_zwei.targobank where  RunID = 789 ) A  left join
(select * from pri_zwei.targobank  where  bank_code in (99999, 02236)  and runid = 768 ) B on A.loc_name = B.loc_name  where B.loc_name   is null;


select * from (select * from pri_zwei.targobank where  RunID = 789 ) A  left join
(select * from pri_zwei.targobank  where  bank_code in (99999, 02236)  and runid = 768 ) B on A.address_2 = B.address_2  where B.address_2   is null;


select count(*) from pri_zwei.targobank where  RunID = 789;

select count(*) from pri_zwei.targobank  where  bank_code in (99999, 02236)  and runid = 768; 
##and address_3 = '80801 München';


SELECT min(cast(latitude as decimal(16,2))), max(cast(latitude as decimal(16,2))), min(cast(longitude as decimal(16,2))), max(cast(longitude as decimal(16,2))) 
FROM pri_zwei.targobank where  bank_group in('TBK', 'CSP') and loc_number != '00000(00)';


select distinct bank_code from pri_zwei.targobank where bank_group in('TBK', 'CSP') and loc_number != '00000(00)'  and runid = 771;
select * from pri_zwei.targobank where  bank_code in (99999, 02236)  and runid = 771;


SELECT   bank_code, count(1) FROM pri_zwei.targobank where  bank_group in('TBK', 'CSP') and loc_number != '00000(00)' and cast(longitude as decimal(16,2)) > 6 and runid = 761
group by bank_code;


# self.dao
SELECT hours_of_operation FROM pri_zwei.targobank where runDate = (select max(distinct rundate) from pri_zwei.targobank) and loc_number = '20192(00)' order by 1 desc;
SELECT hours_of_operation FROM pri_zwei.targobank WHERE runDate = (select max(distinct rundate) from pri_zwei.targobank)  and loc_number = '20195(00)';
select count(*), runid from pri_zwei.targobank group by runid order by runid desc;

select * from pri_zwei.targobank  where  bank_code in (99999, 02236) and loc_type = 'Branch'and runid = 761 order by 1 desc; 
select count(*) from pri_zwei.targobank where bank_code = '02236' and runid = 761;
select latitude, longitude, loc_number, loc_name from pri_zwei.targobank  where  runid = 761 order by 1 desc; 
SELECT latitude, longitude, loc_number, loc_name, bank_code, country FROM pri_zwei.targobank where runid = 761 and country != 'Germany';
select count(*) from pri_zwei.targobank where country is not null;

select * from pri_zwei.targobank where runid = (select max(distinct runid) from pri_zwei.targobank);
select max(distinct runid) from pri_zwei.targobank order by 1 desc;




