SELECT * FROM great_wall.us_telecom_mobile order by 1 desc;
SELECT * FROM great_wall.us_telecom_mobile where Company = 'metrobyt' order by 1 desc;

SELECT * FROM great_wall.us_telecom_company_list;
select count(1), rundate from great_wall.us_telecom_mobile where Battery_mAH is not null group by rundate desc ;

SELECT * FROM great_wall.us_telecom_mobile where RunDate = (select max(rundate) from great_wall.us_telecom_mobile ) order by 1 desc;
SELECT count(1), company FROM great_wall.us_telecom_mobile where RunDate = (select max(rundate) from great_wall.us_telecom_mobile ) group by Company order by 2 desc;