select * from eventlogs.event_machinetraderallaction order by 1 desc;

select * from eventlogs.event_machinetraderallaction  order by 1 desc;

select * from eventlogs.event_machinetraderallaction where runid = 3788 and SeverityID > 2;

select * from eventlogs.event_machinetraderallaction where EventID < 184850 order by 1 desc;

select source_url as SOURCE_URL from pr01.machinetrader_product_stg order by 1 desc limit 1;

select * from eventlogs.event_machinetraderallaction where RunID = 3418 and SeverityID > 2 and Subject != ', not in loc_info_raw' and Subject != 'no auctiondate' order by 1 desc;

select * from eventlogs.event_machinetraderallaction where jobid = 7045451 order by 1 desc;
select * from eventlogs.event_machinetraderallaction where jobid = 7045400 and SeverityID > 2 and Subject != ', not in loc_info_raw' and Subject != 'no auctiondate' order by 1 desc;

select * from eventlogs.event_machinetraderallaction where EventID > 119851 and EventID <= 121056 order by 1 desc;

select * from eventlogs.event_machinetraderallaction where eventtime < '2018-08-06 15:01:37' and EventTime > '2018-08-01 01:01:02' ;
 #where runid = '2233' and SeverityID > 2 order by 1 desc;




select count(1) from eventlogs.event_machinetraderallaction where Subject = 'invalid list id' and runid = '2014' order by 1 desc; 

select * from eventlogs.event_machinetraderallaction where runid = '1956' order by 1 desc;


select * from eventlogs.event_machinetraderallaction where runid = '1988' and SeverityID > 2 order by 1 desc;


select tid, PRice_raw, rundate from pr01.machinetrader_product_stg order by 1 desc;

update pr01.machinetrader_product set brand = null, model = null, ryear = null, breadcrumb = null where  tid > 20380 ;

select * from  pr01.machinetrader_product order by 1 desc;



select * from pr01.machinetrader_todo_list  order by 1 desc;
select * from pr01.machinetrader_todo_list where rundate = '2018-08-10 11:14:43' order by 1 desc;
select count(1), rundate  from pr01.machinetrader_todo_list group by rundate   order by 2 desc;



select * from pr01.machinetrader_product_stg where PRODUCT_NAME = 'Additional Items';

