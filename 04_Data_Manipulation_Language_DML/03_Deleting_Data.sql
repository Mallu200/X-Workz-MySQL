/* TOPIC: DELETE 
Scenario: Removing records from the database.
*/

USE netflix_db;

-- 1. Deleting a specific record
-- Scenario: Removing 'The Godfather' from the list.
DELETE FROM movies 
WHERE movie_id = 4;

-- 2. Deleting records based on a condition
-- Scenario: Removing all movies with a very low rating (below 3.0).
DELETE FROM movies 
WHERE imdb_score < 3.0;

-- 3. DELETE vs TRUNCATE (Quick Reminder)
-- DELETE: Logged row by row, can be undone (if using transactions).
-- TRUNCATE: Wipes the whole table clean instantly, faster but permanent.