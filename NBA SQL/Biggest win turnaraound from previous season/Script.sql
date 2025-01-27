with season_record as (
	select 
	Season,
	team_name,
	SUM(wins) as wins,
	SUM(losses) as losses
	from (
		select 
        CAST(substr(cast(season_id as text), 2, 4) AS INTEGER) as season,
		team_name_home as team_name,
		sum(case when wl_home = 'W' then 1 else 0 end) as wins,
		sum(case when wl_home = 'L' then 1 else 0 end) as losses
		from game
		where season_type = 'Regular Season'
		group by season_id, team_name_home
		union all
		select
		CAST(substr(cast(season_id as text), 2, 4) AS INTEGER),
		team_name_away,
		sum(case when wl_away = 'W' then 1 else 0 end) as wins,
		sum(case when wl_away = 'L' then 1 else 0 end) as losses
		from game
		where season_type = 'Regular Season'
		group by season_id, team_name_away
	)
	group by season, team_name
),
season_with_prev as (
	select
	season,
	team_name,
	wins,
	SUM(wins) over (
		partition by team_name
		order by season asc
		range between 1 preceding and 1 preceding
	) as wins_prev_season
	from season_record
)
select
CAST(season AS TEXT) as season, -- Format season as text
team_name,
wins,
wins_prev_season,
wins - wins_prev_season as wins_increase
from season_with_prev
where wins_prev_season is not null
order by wins_increase desc; 




