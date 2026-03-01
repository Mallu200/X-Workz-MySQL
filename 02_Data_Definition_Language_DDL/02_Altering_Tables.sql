/* TOPIC: ALTER 
Scenario: Updating the table structure as the business grows.
*/

USE netflix_db;

-- 1. Add a new column for movie duration (in minutes)
ALTER TABLE movies 
ADD COLUMN duration_min INT;

-- 2. Modify an existing column (Changing genre length to 100 chars)
ALTER TABLE movies 
MODIFY COLUMN genre VARCHAR(100);

-- 3. Rename a column (Changing 'rating' to 'imdb_score')
ALTER TABLE movies 
RENAME COLUMN rating TO imdb_score;

-- 4. Drop (Delete) a column we no longer need
ALTER TABLE movies 
DROP COLUMN release_year;

-- Check changes
DESCRIBE movies;