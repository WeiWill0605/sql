
SELECT * FROM eventlogs.event_meituanaction order by 1 desc;

SELECT * FROM eventlogs.event_meituanaction where severityId > 2  order by 1 desc;

SELECT * FROM pri_zwei.meituanhotel order by 1 desc;
SELECT * FROM pri_zwei.meituanhotel where lowest_price != original_price order by 1 desc;

SELECT count(1), hotel_star_info FROM pri_zwei.meituanhotel group by hotel_star_info order by 1 desc;

SELECT count(1), price_type FROM pri_zwei.meituanhotel group by price_type order by 1 desc;