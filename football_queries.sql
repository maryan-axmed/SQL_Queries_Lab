--  find all matches from 2017
-- SELECT * 
-- FROM matches
-- WHERE season = 2017;

-- Find all the matches featuring Barcelona.
-- SELECT * 
-- FROM matches
-- WHERE hometeam = 'Barcelona'
-- OR awayteam = 'Barcelona';

-- What are the names of the Scottish divisions included?
-- SELECT name 
-- FROM divisions
-- WHERE country = 'Scotland';

-- Find the value of the `code` for the `Bundesliga` division. Use that code to find out how many matches Freiburg have played in that division. HINT: You will need to query both tables

-- SELECT COUNT(DISTINCT hometeam) + COUNT(DISTINCT awayteam) as matches_played_in_division
-- FROM matches
-- WHERE division_code = (
--     SELECT code
--     FROM divisions
--     WHERE name = 'Bundesliga');

-- Find the teams which include the word "City" in their name. 

-- SELECT DISTINCT hometeam 
-- FROM matches
-- WHERE LOWER(hometeam) LIKE LOWER('%city%');

--  How many different teams have played in matches recorded in a French division?

-- SELECT code 
-- FROM divisions
-- WHERE country = 'France';

-- SELECT COUNT(DISTINCT hometeam)
-- FROM matches 
-- WHERE division_code = 'F1' OR division_code = 'F2';

-- Have Huddersfield played Swansea in any of the recorded matches?
-- SELECT COUNT(DISTINCT hometeam), COUNT(DISTINCT awayteam)
-- FROM  matches 
-- WHERE (hometeam = 'Huddersfield' or awayteam = 'Huddersfield') 
-- AND (hometeam = 'Swansea' or awayteam = 'Swansea');

-- How many draws were there in the `Eredivisie` between 2010 and 2015?
-- SELECT COUNT(ftr) as draws_between_2010_and_2015_in_Eredivisie
-- FROM matches 
-- WHERE division_code = (
--     SELECT code 
--     FROM divisions
--     WHERE name = 'Eredivisie')
-- AND season between 2010 AND 2015
-- ;

-- Select the matches played in the Premier League in order of total goals scored from highest to lowest. When two matches have the same total the match with more home goals should come first.

-- SELECT code 
-- FROM divisions
-- WHERE name = 'Premier League';

SELECT DISTINCT id, fthg, ftag
FROM matches 
WHERE division_code = (
    SELECT code 
    FROM divisions
    WHERE name = 'Premier League'
)
ORDER BY fthg DESC, ftag DESC;

-- In which division and which season were the most goals scored?

-- SELECT MAX(fthg) as max_hometeam, MAX(ftag) as max_awayteam
-- FROM matches;

-- SELECT division_code, season
-- FROM matches
-- WHERE ftag = 13;

-- SELECT name
-- FROM divisions
-- WHERE code ='N1';