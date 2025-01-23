with season_record as (
	select 
	substr(CAST(season_id AS TEXT), 2, 4) as season,
	season_type,
	team_name_home as team_name,
	sum(case when wl_home = 'W' then 1 else 0 end) as wins,
	sum(case when wl_home = 'L' then 1 else 0 end) as losses
	from game
	where season_type = 'Regular Season'
	group by season_id, season_type, team_name_home
	union all
	select
	substr(CAST(season_id AS TEXT), 2, 4),
	season_type,
	team_name_away,
	sum(case when wl_away = 'W' then 1 else 0 end) as wins,
	sum(case when wl_away = 'L' then 1 else 0 end) as losses
	from game
	where season_type = 'Regular Season'
	group by season_id, season_type, team_name_away
)
select 
season,
team_name,
SUM(wins) as wins,
SUM(losses) as losses,
ROUND(SUM(wins) / SUM(wins  +  losses), 3) as win_pct
from season_record
group by season, season_type, team_name
order by win_pct DESC;