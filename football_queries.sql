--  find all matches from 2017
-- SELECT * 
-- FROM matches
-- WHERE season = 2017;

-- Find all the matches featuring Barcelona.
SELECT * 
FROM matches
WHERE hometeam = 'Barcelona'
OR awayteam = 'Barcelona';