with season_record as (
	select 
	season,
	team_name,
	SUM(wins) as wins,
	SUM(losses) as losses
	from (
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
	group by season, team_name
),
season_5y as  (
	select
	season,
	team_name,
	wins,
	losses,
	ROUND(wins / (wins  +  losses), 3) as win_pct,
	SUM(wins) over (
		partition by team_name
		order by season asc
		rows between 4 preceding and current row
	) as wins_5y,
	SUM(losses) over (
		partition by team_name
		order by season asc
		rows between 4 preceding and current row
	) as losses_5y,
	COUNT (*) over (
		partition by team_name
		order by season asc
		rows between 4 preceding and current row
	) as seasons_included
	from season_record
)
select
season,
team_name,
ROUND(wins_5y / (wins_5y + losses_5y), 3) as win_pct_5y
from season_5y
where seasons_included = 5
order by win_pct_5y desc; 




