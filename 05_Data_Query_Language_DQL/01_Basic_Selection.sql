/* TOPIC: SELECT & ALIASES
Scenario: Retrieving basic movie info for the UI.
*/

USE netflix_db;

-- 1. Select EVERYTHING from a table (Use sparingly in big databases!)
SELECT * FROM movies;

-- 2. Select specific columns (Best practice for performance)
SELECT title, imdb_score FROM movies;

-- 3. Using Aliases (AS) to rename columns for the final report
-- This makes the output look professional for business users.
SELECT 
    title AS 'Movie Title', 
    genre AS 'Category', 
    imdb_score AS 'Rating' 
FROM movies;

-- 4. Using DISTINCT to find unique values
-- Scenario: "What genres do we actually have in our library?"
SELECT DISTINCT genre FROM movies;