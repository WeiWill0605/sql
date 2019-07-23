select * from eventlogs.event_caesarshotelaction order by 1 desc;

select count(1), rundate from pri_zwei.caesars_hotel_room group by rundate desc;


SELECT * FROM pri_zwei.caesars_hotel_room  order by 1  desc;

SELECT * FROM pri_zwei.caesars_hotel_room where rundate = '2018-12-26 18:14:49' order by 1  desc;

SELECT * FROM pri_zwei.caesars_hotel_room where rundate = '2018-12-26 11:45:07' and room_id in ('63', '68', '77');

SELECT * FROM pri_zwei.caesars_hotel_room where rundate = '2018-12-26 11:14:01' and  hotel_name = 'Paris Las Vegas' order by display_rank  asc;

SELECT count(1), hotel_name FROM pri_zwei.caesars_hotel_room where rundate = '2018-12-26 18:14:49' group by hotel_name;
SELECT count(1), hotel_name FROM pri_zwei.caesars_hotel_room where rundate = '2018-12-26 20:42:47' group by hotel_name;


SELECT count(distinct display_rank) FROM pri_zwei.caesars_hotel_room where rundate = '2018-12-26 11:23:04' and  hotel_name = 'Paris Las Vegas' order by display_rank  asc;

SELECT count(1), rate_set_code FROM pri_zwei.caesars_hotel_room where rundate = '2018-12-26 11:23:04' and  hotel_name = 'Paris Las Vegas' group by rate_set_code desc;

