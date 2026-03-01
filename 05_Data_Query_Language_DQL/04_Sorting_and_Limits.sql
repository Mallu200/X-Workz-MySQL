/* TOPIC: ORDER BY & LIMIT
Scenario: Ranking and Paginating results.
*/

USE netflix_db;

-- 1. Sorting (ORDER BY)
-- Default is ASC (A-Z or 1-10). DESC is for (Z-A or 10-1).
SELECT title, imdb_score 
FROM movies 
ORDER BY imdb_score DESC;

-- 2. Sorting by multiple columns
-- Sort by Genre (alphabetical), then by Rating (highest first)
SELECT genre, title, imdb_score 
FROM movies 
ORDER BY genre ASC, imdb_score DESC;

-- 3. LIMIT (Limiting the number of rows)
-- Scenario: Give me the top 3 longest movies.
SELECT title, duration_min 
FROM movies 
ORDER BY duration_min DESC 
LIMIT 3;

-- 4. LIMIT with OFFSET (Used for "Next Page" in apps)
-- Skip the first 2 and show the next 2.
SELECT title FROM movies LIMIT 2 OFFSET 2;