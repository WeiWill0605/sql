select * from eventlogs.event_weibohotnews  order by 1 desc;


select * from eventlogs.event_weibohotnews where runid = 2157  order by 1 desc;


select * from weibo_hot_news_blogs order by 1 desc;

SELECT * FROM weibo_hot_news_blogs where  create_time > '2018-7-20 00:00:00'  order by 1 desc ;
select count(distinct blog_id) from weibo_hot_news_blogs;

select * from zwei.weibo_hot_news_comments where sub_comments_count > 200  order by 1 desc;

select count(distinct(comment_id)) from weibo_hot_news_comments where comment_text != '转发微博';


SELECT count(1), rundate  FROM zwei.weibo_hot_news_comments  group by RunDate  order by 2 desc ;  


select * from weibo_hot_news_comments where comment_type = 'blog_comments' order by 1 desc;


select distinct(comment_id) from weibo_hot_news_comments where rundate =   (select max(rundate) from weibo_hot_news_comments ) and  has_sub_comments = 1 ;

select * from weibo_hot_news_comments where rundate =   (select max(rundate) from weibo_hot_news_comments ) and  has_sub_comments = 1 ;
select count(distinct(comment_text)) from zwei.weibo_hot_new_comments  where rundate = '2018-07-26 13:12:29' ;




select A.blog_id, A.user_name, A.like_count, A.reposts_count, A.comments_count, B.real_comments_count, A.blog_text from 
(select * from weibo_hot_news_blogs) as A join

(select count(1) + sum(sub_comments_count)  as real_comments_count, parent_id from weibo_hot_news_comments where comment_type = 'blog_comments' group by parent_id) as B on  A.blog_id = B.parent_id;


select * from 
(select * from weibo_hot_news_comments where comment_type = 'blog_comments' and has_sub_comments = 1) as blog_comments join
(select * from weibo_hot_news_comments where comment_type = 'sub_comments' ) as sub_comments on blog_comments.comment_id  = sub_comments.comment_id ;


select count(distinct(comment_id)) from  
(select * from weibo_hot_news_blogs where  create_time > '2018-07-10 00:00:00'  )  as A  join 
(select * from weibo_hot_news_comments where comment_text != '转发微博'  ) as B on A.blog_id = B.parent_id 
 ;
 




