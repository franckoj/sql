

Create table If Not Exists Activity (player_id int, device_id int, event_date date, games_played int)
insert into Activity  values (1, 2, '2016-03-01', 5),
(1, 2, '2016-03-02', 6),
(2, 3, '2017-06-25', 1),
(3, 1, '2016-03-02', 0),
(3, 4, '2018-07-03', 5) 

-- Write an SQL query to report the first login date for each player.

select player_id,min(event_date) from Activity
group by player_id
order by player_id
