/* TOPIC: Aggregate Functions
Scenario: Calculating totals and averages for the library.
*/

USE netflix_db;

-- 1. COUNT: How many movies are in our database?
SELECT COUNT(*) AS total_movies FROM movies;

-- 2. SUM: How many total minutes of content do we have?
SELECT SUM(duration_min) AS total_library_minutes FROM movies;

-- 3. AVG: What is the average IMDB score across all movies?
SELECT AVG(imdb_score) AS average_rating FROM movies;

-- 4. MIN & MAX: Find the shortest and longest movie durations.
SELECT MIN(duration_min) AS shortest, MAX(duration_min) AS longest FROM movies;