
select * from weibo_hot_news_blogs  order by 1 desc;


select count(1), blog_id from weibo_hot_news_blogs group by blog_id  order by 1 desc;

SELECT * FROM weibo_hot_news_comments   order by 1 desc ;


SELECT blog_id as '帖子ID', user_name as '平台', create_time as '发帖时间', blog_text as '内容', comments_count as '评论数', like_count as '点赞数', reposts_count as '转发数' FROM zwei.weibo_hot_news_blogs where user_name = '人民日报' and create_time > '2018-07-20 00:00:00';


select B.blog_id as '帖子ID', B.user_name as '账号名称', B.location as '地址', B.gender as '性别', B.created_at as '注册时间', B.comment_text as '评论内容', B.comment_time as '评论时间', B.like_count as '点赞数' from zwei.weibo_hot_news_comments order by tid desc;

select B.blog_id as '帖子ID',A.blog_text as '内容', B.user_name as '账号名称', B.location as '地址', B.gender as '性别', B.created_at as '注册时间', B.comment_text as '评论内容', B.comment_time as '评论时间', B.like_count as '点赞数' from  
(select * from weibo_hot_news_blogs where user_name = '人民日报' and create_time > '2018-07-19 13:21:50') as A left join 
(select * from weibo_hot_news_comments ) as B on A.blog_id = B.blog_id 
 ;


#where blog_id = 4265654472760457 
SELECT count(1), rundate  FROM weibo_hot_news_comments group by rundate  order by 1 desc ;


select count(distinct(concat(comment_text, user_id))), blog_id  from weibo_hot_news_comments  group by blog_id order by 1 desc;


SELECT distinct(blog_id) FROM weibo_hot_news_blogs where rundate = (select max(rundate) from weibo_hot_news_blogs ) and create_time > '2018-7-20 00:00:00'  order by 1 desc ;