/* TOPIC: LEFT & RIGHT JOIN
Scenario: Finding missing links or unassigned data.
*/

USE netflix_db;

-- 1. LEFT JOIN: Everything from the LEFT table (movies)
-- Good for finding movies that are missing director info.
SELECT m.title, d.director_name
FROM movies m
LEFT JOIN directors d ON m.director_id = d.director_id;

-- 2. RIGHT JOIN: Everything from the RIGHT table (directors)
-- Good for finding directors who have no content on the platform.
SELECT d.director_name, m.title
FROM movies m
RIGHT JOIN directors d ON m.director_id = d.director_id;