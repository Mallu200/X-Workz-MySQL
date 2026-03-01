/* TOPIC: GROUP BY
Scenario: Breaking down stats by category.
*/

USE netflix_db;

-- 1. Count movies per genre
SELECT genre, COUNT(*) AS movie_count
FROM movies
GROUP BY genre;

-- 2. Average rating per genre, sorted by highest rating
SELECT genre, AVG(imdb_score) AS avg_rating
FROM movies
GROUP BY genre
ORDER BY avg_rating DESC;

-- 3. Total duration per genre
SELECT genre, SUM(duration_min) AS total_runtime
FROM movies
GROUP BY genre;