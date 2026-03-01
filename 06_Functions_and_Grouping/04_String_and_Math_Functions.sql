/* TOPIC: String & Math Functions
Scenario: Formatting the output for the Netflix App UI.
*/

USE netflix_db;

-- 1. UPPER and LOWER: Formatting text
SELECT UPPER(title) AS loud_title, LOWER(title) AS quiet_title FROM movies;

-- 2. CONCAT: Joining strings together
-- Result: "Inception (Sci-Fi)"
SELECT CONCAT(title, ' (', genre, ')') AS movie_label FROM movies;

-- 3. ROUND: Rounding numbers to specific decimal places
SELECT title, ROUND(imdb_score, 0) AS rounded_rating FROM movies;

-- 4. LENGTH: Counting characters in a title
SELECT title, LENGTH(title) AS title_char_count FROM movies;