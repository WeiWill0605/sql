
select * from weibo_hot_news_blogs order by 1 desc;
select * from weibo_hot_news_blogs where blog_id = '4287715153371784';
select count(1), rundate  from weibo_hot_news_blogs group by rundate  order by 2 desc;


select count(1), rundate  from weibo_hot_news_blogs group by blog_id  order by 1 desc;

SELECT * FROM weibo_hot_news_blogs  where rundate = '2018-07-31 10:56:26' and  create_time > '2018-7-10 00:00:00';

SELECT * FROM weibo_hot_news_comments   order by 1 desc ;
select count(1), rundate FROM weibo_hot_news_comments group by rundate order by 2 desc;
select * from weibo_hot_news_comments where rundate = '2018-08-22 01:01:01';

SELECT max(comment_time) FROM weibo_hot_news_comments where comment_type = 'blog_comments' and  parent_id = '4264975474417122'  order by 1 desc ;

select sum(sub_comments_count) from weibo_hot_news_comments where sub_comments_count > 2;

SELECT blog_id as '帖子ID', user_name as '平台', create_time as '发帖时间', blog_text as '内容', comments_count as '评论数', like_count as '点赞数', reposts_count as '转发数' FROM zwei.weibo_hot_news_blogs where rundate >= '2018-08-22 01:01:01';


select B.blog_id as '帖子ID', B.user_name as '账号名称', B.location as '地址', B.gender as '性别', B.created_at as '注册时间', B.comment_text as '评论内容', B.comment_time as '评论时间', B.like_count as '点赞数' from zwei.weibo_hot_news_comments order by tid desc;

select A.user_name as '平台', A.blog_id as '帖子ID',B.user_name as '账号名称', B.location as '地址', B.gender as '性别', B.created_at as '注册时间', B.comment_text as '评论内容', B.comment_time as '评论时间', B.like_count as '点赞数' from  
#select count(1) from 
(select * from weibo_hot_news_blogs where  create_time > '2018-07-10 00:00:00'  )  as A  join 
(select * from weibo_hot_news_comments where rundate >= '2018-08-22 01:01:01' and comment_text != '转发微博' and comment_id not in 
(select distinct(comment_id) from weibo_hot_news_comments where rundate >= '2018-08-22 01:01:01' group by comment_id having count(1) > 1) ) as B on A.blog_id = B.parent_id 
 ;
 
 select comment_id from weibo_hot_news_comments where rundate >= '' group by comment_id having count(1) > 2;
 select * from weibo_hot_news_comments where comment_text = '疫苗事件关系重大，应尽快核实';
 select * from weibo_hot_news_comments where parent_id = '4263064796781401';


#where blog_id = 4265654472760457 
SELECT count(1), rundate  FROM weibo_hot_news_comments group by rundate  order by 2 desc ;


select count(distinct(concat(comment_text, user_id))), blog_id  from weibo_hot_news_comments  group by blog_id order by 1 desc;


SELECT distinct(blog_id) FROM weibo_hot_news_blogs where rundate = (select max(rundate) from weibo_hot_news_blogs ) and create_time > '2018-7-20 00:00:00'  order by 1 desc ;