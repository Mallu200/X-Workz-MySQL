/* TOPIC: UNION & UNION ALL
Scenario: Creating a "Unified Search" for both Movies and TV Shows.
*/

USE netflix_db;

-- 1. PREPARATION: Create the TV Shows table
-- Note: The structure should be similar to the 'movies' table for a clean UNION.
CREATE TABLE tv_shows (
    show_id INT PRIMARY KEY AUTO_INCREMENT,
    show_name VARCHAR(255),
    genre VARCHAR(50),
    seasons INT
);

-- 2. DATA SETUP: Adding some shows
INSERT INTO tv_shows (show_name, genre, seasons) VALUES 
('Stranger Things', 'Horror', 4),
('Breaking Bad', 'Crime', 5),
('The Crown', 'Drama', 6),
('Inception', 'Sci-Fi', 1); -- Intentionally adding a duplicate name to test UNION

-- 3. THE UNION: Stacking Movies and TV Shows (Removes Duplicates)
-- If 'Inception' is in both tables, UNION will only show it ONCE.
SELECT title AS content_name, genre FROM movies
UNION
SELECT show_name, genre FROM tv_shows
ORDER BY content_name ASC;

-- 4. THE UNION ALL: Stacking everything (Keeps Duplicates)
-- This is faster because MySQL doesn't have to check for duplicates.
-- 'Inception' will appear twice in this list.
SELECT title AS content_name, 'Movie' AS category FROM movies
UNION ALL
SELECT show_name, 'TV Show' AS category FROM tv_shows
ORDER BY content_name ASC;

/* RULES FOR UNION:
1. Every SELECT statement must have the same number of columns.
2. The columns must have similar data types.
3. The column names in the final result are taken from the FIRST SELECT statement.
*/