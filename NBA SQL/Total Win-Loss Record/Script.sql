select 
team_name,
SUM(wins) as wins,
SUM(losses) as losses
from (
	select 
	team_name_home as team_name,
	sum(case when wl_home = 'W' then 1 else 0 end) as wins,
	sum(case when wl_home = 'L' then 1 else 0 end) as losses
	from game
	group by team_name_home
	union all
	select
	team_name_away,
	sum(case when wl_away = 'W' then 1 else 0 end) as wins,
	sum(case when wl_away = 'L' then 1 else 0 end) as losses
	from game
	group by team_name_away
)
group by team_name
order by wins desc;

