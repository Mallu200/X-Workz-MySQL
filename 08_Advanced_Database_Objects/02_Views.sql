/* TOPIC: Views
Scenario: Creating a simplified "Saved Search" for other teams.
*/

USE netflix_db;

-- 1. Creating a View
CREATE VIEW high_rated_action AS
SELECT title, imdb_score, duration_min
FROM movies
WHERE genre = 'Action' AND imdb_score > 8.0;

-- 2. Using the View (It acts like a real table!)
SELECT * FROM high_rated_action;

-- 3. Updating a View (OR REPLACE)
CREATE OR REPLACE VIEW high_rated_action AS
SELECT title, imdb_score 
FROM movies 
WHERE genre = 'Action' AND imdb_score > 8.5;

-- 4. Deleting a View
DROP VIEW high_rated_action;