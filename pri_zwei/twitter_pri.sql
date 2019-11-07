SELECT * FROM great_wall.twitter_tweet order by 1 desc;
SELECT * FROM great_wall.twitter_tweet where in_reply_to_screen_name is null order by id desc;
SELECT * FROM great_wall.twitter_tweet where id = '1158825262764761096' order by id desc;
SELECT count(1), id  FROM great_wall.twitter_tweet group by id   order by 1 desc;
SELECT count(1), id  FROM great_wall.twitter_tweet group by id   order by 1 desc;
SELECT count(1), rundate  FROM great_wall.twitter_tweet group by rundate   order by 2 desc;