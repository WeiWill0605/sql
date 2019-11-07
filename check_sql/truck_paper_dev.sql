select * from eventlogs.event_truckpaperaction order by 1 desc;


select * from eventlogs.event_truckpaperaction where runid = 3923 and SeverityID > 2 and Subject != 'no auctiondate' order by 1 desc;


SELECT count(1) FROM pr01.truckpaper_todo_list where page_raw is  null order by 1 desc;

SELECT count(1) FROM pr01.truckpaper_todo_list where result_count is  null order by 1 desc;


SELECT tid, A.url, A.conditions,  A.SEARCH_TYPE,  A.cat_name, A.result_count FROM pr01.truckpaper_todo_list  as A order by 1 desc ;


