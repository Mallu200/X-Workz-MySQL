/* TOPIC: HAVING Clause
Scenario: Filtering the results of a GROUP BY.
*/

USE netflix_db;

-- Find genres that have an average rating higher than 8.0
-- We use HAVING because 'avg_rating' is a result of a group calculation.
SELECT genre, AVG(imdb_score) AS avg_rating
FROM movies
GROUP BY genre
HAVING avg_rating > 8.0;

-- Combining WHERE and HAVING:
-- Look only at movies longer than 60 mins, then group by genre, 
-- then show only genres with more than 2 movies.
SELECT genre, COUNT(*) as movie_count
FROM movies
WHERE duration_min > 60
GROUP BY genre
HAVING movie_count > 2;