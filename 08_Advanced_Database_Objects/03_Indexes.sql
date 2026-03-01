/* TOPIC: Indexes
Scenario: Speeding up search performance for large tables.
*/

USE netflix_db;

-- 1. Create an Index on the 'title' column
-- Now searches for movie titles will be lightning fast.
CREATE INDEX idx_movie_title ON movies(title);

-- 2. Show all indexes on a table
SHOW INDEX FROM movies;

-- 3. Composite Index (Indexing two columns together)
-- Useful if users often search by both Genre and Rating.
CREATE INDEX idx_genre_rating ON movies(genre, imdb_score);

-- 4. Drop an Index
ALTER TABLE movies DROP INDEX idx_movie_title;