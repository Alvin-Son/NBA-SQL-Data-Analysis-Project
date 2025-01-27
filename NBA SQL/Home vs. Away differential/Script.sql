WITH home_performance AS (
    SELECT
        team_name_home AS team_name,
        COUNT(*) AS total_home_games,
        SUM(CASE WHEN wl_home = 'W' THEN 1 ELSE 0 END) AS home_wins,
        ROUND(SUM(CASE WHEN wl_home = 'W' THEN 1 ELSE 0 END) * 1.0 / COUNT(*), 3) AS home_win_pct
    FROM game
    GROUP BY team_name_home
),
away_performance AS (
    SELECT
        team_name_away AS team_name,
        COUNT(*) AS total_away_games,
        SUM(CASE WHEN wl_away = 'W' THEN 1 ELSE 0 END) AS away_wins,
        ROUND(SUM(CASE WHEN wl_away = 'W' THEN 1 ELSE 0 END) * 1.0 / COUNT(*), 3) AS away_win_pct
    FROM game
    GROUP BY team_name_away
),
team_comparison AS (
    SELECT
        h.team_name,
        h.total_home_games,
        h.home_wins,
        h.home_win_pct,
        a.total_away_games,
        a.away_wins,
        a.away_win_pct,
        h.total_home_games + a.total_away_games AS total_games,
        ROUND(h.home_win_pct - a.away_win_pct, 3) AS home_vs_away_diff
    FROM home_performance h
    JOIN away_performance a
    ON h.team_name = a.team_name
)
SELECT
    team_name,
    home_win_pct,
    away_win_pct,
    home_vs_away_diff
FROM team_comparison
WHERE total_games >= 1500  -- Filter teams with at least 500 total games
ORDER BY home_vs_away_diff DESC;