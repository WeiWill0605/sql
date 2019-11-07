delete from srs.wikimedia_article where tid in 
(select tid from (SELECT max(tid) as tid, article, count(1)  FROM srs.wikimedia_article group by article having count(1) > 1) as A)  ;