SELECT * FROM eventlogs.event_meituanhotelaction order by 1 desc;

SELECT count(1) FROM eventlogs.event_meituanhotelaction where RunID = 3941 and Subject = 'processing hotel' order by 1 desc;
SELECT * FROM eventlogs.event_meituanaction where SeverityID > 2 order by 1 desc;


SELECT * FROM zwei.meituan_hotel_qingdao order by 1 desc;
SELECT * FROM pri_zwei.meituanhotel where lowest_price != original_price order by 1 desc;

SELECT count(1), hotel_star_info FROM pri_zwei.meituanhotel group by hotel_star_info order by 1 desc;

SELECT count(1), price_type FROM pri_zwei.meituanhotel group by price_type order by 1 desc;


select * from zwei.meituan_hotel_room where hotel_id = '13790261';

select * from zwei.meituan_hotel_room where room_id = '13790261';

select count(1), start_date from zwei.meituan_hotel_room where hotel_id = '159680419' group by start_date ;
