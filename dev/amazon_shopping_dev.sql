select * from eventlogs.event_amazonshoppingaction order by 1 desc;

select * from eventlogs.event_amazonshoppingaction where runid = 9045 and SeverityID > 2 order by 1 desc;

SELECT * FROM srs.amazon_shopping_category where count is null;