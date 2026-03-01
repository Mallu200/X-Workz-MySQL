/* TOPIC: Subqueries (Inner Queries)
Scenario: Finding "Above Average" content.
*/

USE netflix_db;

-- 1. Subquery in the WHERE clause
-- Find all movies with an imdb_score higher than the overall average
SELECT title, imdb_score
FROM movies
WHERE imdb_score > (SELECT AVG(imdb_score) FROM movies);

-- 2. Subquery in the SELECT clause
-- Show each movie and the average score of the whole library next to it
SELECT title, imdb_score, 
       (SELECT AVG(imdb_score) FROM movies) AS global_avg
FROM movies;