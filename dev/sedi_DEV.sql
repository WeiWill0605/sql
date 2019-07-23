SELECT * FROM eventlogs.event_sediaction order by 1 desc;
SELECT * FROM eventlogs.event_sediaction where SeverityID > 2 order by 1 desc;

SELECT * FROM pri_zwei.sedi_info order by 1 desc;


SELECT count(1), rundate FROM pri_zwei.sedi_info group by rundate order by 2 desc;