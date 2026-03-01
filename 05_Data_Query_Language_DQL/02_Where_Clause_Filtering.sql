/* TOPIC: WHERE Clause Logic
Scenario: Filtering content based on user preferences.
*/

USE netflix_db;

-- 1. Using Basic Operators (=, <, >, >=, <=, !=)
SELECT * FROM movies 
WHERE imdb_score > 8.5;

-- 2. Using AND (Both conditions must be true)
SELECT title, duration_min FROM movies 
WHERE genre = 'Sci-Fi' AND duration_min > 120;

-- 3. Using OR (Either condition can be true)
SELECT * FROM movies 
WHERE genre = 'Action' OR genre = 'Crime';

-- 4. Using IN (Shortcut for multiple ORs)
-- Scenario: Show movies from a specific list of genres.
SELECT * FROM movies 
WHERE genre IN ('Horror', 'Sci-Fi', 'Comedy');

-- 5. Using BETWEEN
-- Scenario: Find movies with a duration between 90 and 120 minutes.
SELECT title, duration_min FROM movies 
WHERE duration_min BETWEEN 90 AND 120;