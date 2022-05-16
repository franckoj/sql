--Write an SQL query to report the device that is first logged in for each player.

with cte as (select *,
dense_rank() over (partition by player_id order by event_date ) as r from Activity )
select player_id,device_id from cte
where r = 1
