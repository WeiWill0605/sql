SELECT * FROM srs.trip_advisor_review order by 1 desc;

select count(1), rundate from srs.trip_advisor_review group by rundate  order by 2 desc;