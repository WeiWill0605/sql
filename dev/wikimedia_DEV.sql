SELECT * FROM eventlogs.event_wikimediaaction ORDER BY 1 DESC;

SELECT * FROM srs.wikimedia_view_count ORDER BY 1 DESC;

SELECT COUNT(1), rundate FROM srs.wikimedia_view_count GROUP BY rundate  ORDER BY 2 DESC;
SELECT COUNT(DISTINCT article), rundate FROM srs.wikimedia_view_count GROUP BY rundate  ORDER BY 2 DESC;

SELECT article, access, agent, `timestamp`  FROM srs.wikimedia_view_count;