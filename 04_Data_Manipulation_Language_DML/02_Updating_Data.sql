/* TOPIC: UPDATE 
Scenario: Correcting or changing existing information.
*/

USE netflix_db;

-- 1. Updating a single value
-- Scenario: 'Inception' rating just went up!
UPDATE movies 
SET imdb_score = 8.9 
WHERE movie_id = 1;

-- 2. Updating multiple columns at once
-- Scenario: Fixing a user's profile details.
UPDATE users 
SET first_name = 'Vikram', last_name = 'Singh'
WHERE user_id = 101;

-- 3. Updating multiple rows (Conditional Update)
-- Scenario: Giving a 0.5 bonus score to all 'Sci-Fi' movies.
UPDATE movies
SET imdb_score = imdb_score + 0.5
WHERE genre = 'Sci-Fi';