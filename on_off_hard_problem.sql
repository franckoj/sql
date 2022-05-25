create table event_status
(
event_time varchar(10),
status varchar(10)
);
insert into event_status 
values
('10:01','on'),('10:02','on'),('10:03','on'),('10:04','off'),('10:07','on'),('10:08','on'),('10:09','off')
,('10:11','on'),('10:12','off');


with cte as (
	select 
		event_time,
		status,
		row_number() over(order by event_time)-rank() over(partition by status order by event_time) r
	from event_status
	order by event_status)
select
	min(event_time) login,
	max(event_time) logoff,
	count(r),
	status 
from cte
group by r,status
order by login
