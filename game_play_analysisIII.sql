--Write an SQL query to report for each player and date, how many games played so far by the player. That is, the total number of games played by the player until that date

select player_id,event_date,sum( games_played) 
from Activity
group by player_id,event_date
order by player_id
