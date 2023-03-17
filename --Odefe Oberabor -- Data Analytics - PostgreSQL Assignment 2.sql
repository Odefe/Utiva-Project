-- Odefe Oberabor - Data Analytics - PostgreSQL Assignment 2

-- Q3 - The country with the highest and lowest apperance in the last five years?

--Highest:Argentina with 5

WITH all_world_cup AS (
SELECT 'wc 2002' AS worldcupyear,
team,
	points,
	games_played,
	win,
    goal_diffrence,
	loss,
	goals_scored,
	goals_against
FROM fifa_2002 UNION ALL
SELECT
'wc 2006' AS worldcupyear,
	team,
	points,
	games_played,
	win,
    goal_diffrence,
	loss,
	goals_scored,
	goals_against
FROM fifa_2006 UNION ALL
	SELECT
'wc 2010' AS worldcupyear,
	team,
	points,
	games_played,
	win,
    goal_diffrence,
	loss,
	goals_scored,
	goals_against
FROM fifa_2010 UNION ALL
	SELECT
'wc 2014' AS worldcupyear,
	team,
	points,
	games_played,
	win,
    goal_diffrence,
	loss,
	goals_scored,
	goals_against
FROM fifa_2014 UNION ALL
	SELECT
'wc 2018' AS worldcupyear,
	team,
	points,
	games_played,
	win,
    goal_diffrence,
	loss,
	goals_scored,
	goals_against
FROM fifa_2018	
)

SELECT team, COUNT(DISTINCT worldcupyear) AS appearances
FROM all_world_cup
GROUP BY team
ORDER BY appearances DESC
LIMIT 1;


-- Lowest: Bosnia &Herzegovina with 1

WITH all_world_cup AS (
SELECT 'wc 2002' AS worldcupyear,
team,
	points,
	games_played,
	win,
    goal_diffrence,
	loss,
	goals_scored,
	goals_against
FROM fifa_2002 UNION ALL
SELECT
'wc 2006' AS worldcupyear,
	team,
	points,
	games_played,
	win,
    goal_diffrence,
	loss,
	goals_scored,
	goals_against
FROM fifa_2006 UNION ALL
	SELECT
'wc 2010' AS worldcupyear,
	team,
	points,
	games_played,
	win,
    goal_diffrence,
	loss,
	goals_scored,
	goals_against
FROM fifa_2010 UNION ALL
	SELECT
'wc 2014' AS worldcupyear,
	team,
	points,
	games_played,
	win,
    goal_diffrence,
	loss,
	goals_scored,
	goals_against
FROM fifa_2014 UNION ALL
	SELECT
'wc 2018' AS worldcupyear,
	team,
	points,
	games_played,
	win,
    goal_diffrence,
	loss,
	goals_scored,
	goals_against
FROM fifa_2018	
)

SELECT team, COUNT(DISTINCT worldcupyear) AS appearances
FROM all_world_cup
GROUP BY team
ORDER BY appearances ASC
LIMIT 1;


-- Q4 - The country with the highest and lowest games played?
--Highest:Portugal with 7
SELECT team, MAX(games_played) AS max_games_played
FROM all_world_cup
GROUP BY team
ORDER BY max_games_played DESC
LIMIT 1;
--Lowest:Cameroon with 3
SELECT team, MIN(games_played) AS min_games_played
FROM all_world_cup
GROUP BY team
ORDER BY min_games_played ASC
LIMIT 1;

-- Q5 - The country with the highest and lowest games won?
--Highest:Germany with 57
SELECT team, SUM(win) AS games_won
FROM all_world_cup
GROUP BY team
ORDER BY games_won DESC
LIMIT 1;
--Lowest: Cameroon with 0
SELECT team, MIN(win) AS games_won
FROM all_world_cup
GROUP BY team
ORDER BY games_won ASC
LIMIT 1;


-- Q6 - The country with the highest and lowest games lost?
--Highest:Saudi Arabia with 22
SELECT team, SUM(loss) AS total_losses
FROM all_world_cup
GROUP BY team
ORDER BY total_losses DESC
LIMIT 1;
--Lowest:Republic of Ireland with 0
SELECT team, SUM(loss) AS total_losses
FROM all_world_cup
GROUP BY team
ORDER BY total_losses ASC
LIMIT 1;

-- Q7 - The country with the highest and lowest goals for?
--Highest:Germany with 18
SELECT team, MAX(goals_scored) AS max_goals_for
FROM all_world_cup
GROUP BY team
ORDER BY max_goals_for DESC
LIMIT 1;
--Lowest:Saudi Arabia with 0
SELECT team, MIN(goals_scored) AS min_goals_for
FROM all_world_cup
GROUP BY team
ORDER BY min_goals_for ASC
LIMIT 1;

-- Q8 - The country with the highest and lowest goals against?
--Highest:Brazil with 14
SELECT team, MAX(goals_against) as goals_against
FROM all_world_cup
GROUP BY team
ORDER BY goals_against DESC
LIMIT 1;
--Lowest:Switzerland with 0
SELECT team, MIN(goals_against) as goals_against
FROM all_world_cup
GROUP BY team
ORDER BY goals_against ASC
LIMIT 1;

-- Q9 - The country with the highest and lowest goals diffrence?
--Highest: Germany with 14
SELECT team, MAX(goal_diffrence) AS highest_goal_diffrence
FROM all_world_cup
GROUP BY team
ORDER BY highest_goal_diffrence DESC
LIMIT 1;
--Lowest:Saudi Arabia with -12
SELECT team, MIN(goal_diffrence) AS lowest_goal_diffrence
FROM all_world_cup
GROUP BY team
ORDER BY lowest_goal_diffrence ASC
LIMIT 1;
-- Q10 - The country with the highest and lowest points?
--Highest:Germany with 180
SELECT team, SUM(points) AS total_points
FROM all_world_cup
GROUP BY team
ORDER BY total_points DESC
LIMIT 1;
--Lowest:Serbia & Montenegro with 0
