SELECT * FROM srs.xbox_game_rank order by 1 desc;
SELECT count(1), rundate FROM srs.xbox_game_rank group by rundate order by 2 desc;

SELECT * FROM srs.xbox_game_rank where rundate = '2019-07-22 19:25:22' order by 1 desc;