SELECT * FROM eventlogs.event_moaaction order by 1 desc;

SELECT count(*), RunDate FROM pri_zwei.moa_product  group by rundate order by 2 desc;

SELECT * FROM pri_zwei.moa_product order by audit_date desc;