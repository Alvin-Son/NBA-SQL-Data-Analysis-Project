WITH team_game_stats AS (
    SELECT
        CAST(substr(CAST(season_id AS TEXT), 2, 4) AS INTEGER) AS season,
        team_name_home AS team_name,
        SUM(pts_home) - SUM(pts_away) AS total_point_diff,
        COUNT(*) AS total_games
    FROM game
    WHERE season_type = 'Regular Season'
      AND team_name_home NOT ILIKE '%all stars%' 
      AND team_name_home NOT ILIKE '%team%'
      AND team_name_away NOT ILIKE '%all star%' 
      AND team_name_away NOT ILIKE '%team%'
    GROUP BY season, team_name_home
    UNION ALL
    SELECT
        CAST(substr(CAST(season_id AS TEXT), 2, 4) AS INTEGER) AS season,
        team_name_away AS team_name,
        SUM(pts_away) - SUM(pts_home) AS total_point_diff,
        COUNT(*) AS total_games
    FROM game
    WHERE season_type = 'Regular Season'
      AND team_name_home NOT ILIKE '%all stars%' 
      AND team_name_home NOT ILIKE '%team%'
      AND team_name_away NOT ILIKE '%all stars%' 
      AND team_name_away NOT ILIKE '%team%'
    GROUP BY season, team_name_away
),
team_avg_margin AS (
    SELECT
        season,
        team_name,
        SUM(total_point_diff) AS total_point_diff,
        SUM(total_games) AS total_games,
        ROUND(CAST(SUM(total_point_diff) * 1.0 / SUM(total_games) AS NUMERIC), 3) AS avg_margin
    FROM team_game_stats
    GROUP BY season, team_name
)
SELECT
	CAST(season AS TEXT) as season, -- Format season as text
    team_name,
    avg_margin
FROM team_avg_margin
ORDER BY avg_margin DESC;