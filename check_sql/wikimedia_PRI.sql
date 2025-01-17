SELECT * FROM srs.wikimedia_article order by 1 desc;
SELECT count(1), rundate  FROM srs.wikimedia_article group by rundate  order by 2 desc;
SELECT count(1), count(distinct article, category)  FROM srs.wikimedia_article;
SELECT count(1), count(distinct article)  FROM srs.wikimedia_article;

SELECT * FROM srs.wikimedia_view_count order by 1 desc;

select count(1), rundate from srs.wikimedia_view_count group by rundate  order by 2 desc;
select count(distinct article), rundate from srs.wikimedia_view_count group by rundate  order by 2 desc;


select count(1), count(distinct timestamp), count(1) - count(distinct timestamp) as diff,  article from srs.wikimedia_view_count group by article  order by diff desc;

select count(1), max(timestamp), min(timestamp),  datediff(max(timestamp), min(timestamp)) - count(1) as diff, article  from srs.wikimedia_view_count group by article order by diff desc ;
