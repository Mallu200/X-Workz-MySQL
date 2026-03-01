/* TOPIC: INNER JOIN (The Complete Setup)
Scenario: Linking Movies to their actual Directors.
*/

USE netflix_db;

-- 1. STEP ONE: Create the Directors Table
CREATE TABLE directors (
    director_id INT PRIMARY KEY AUTO_INCREMENT,
    director_name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

-- 2. STEP TWO: Insert some Directors
INSERT INTO directors (director_name, country)
VALUES 
('Christopher Nolan', 'UK'),
('Francis Ford Coppola', 'USA'),
('Quentin Tarantino', 'USA'),
('Greta Gerwig', 'USA');

-- 3. STEP THREE: Add a Director_ID column to your existing Movies table
-- (If you haven't added it in previous folders)
ALTER TABLE movies ADD COLUMN director_id INT;

-- 4. STEP FOUR: Link the movies to the directors
-- (Setting IDs manually for this example)
UPDATE movies SET director_id = 1 WHERE title = 'Inception';
UPDATE movies SET director_id = 1 WHERE title = 'Interstellar';
UPDATE movies SET director_id = 1 WHERE title = 'The Dark Knight';
UPDATE movies SET director_id = 2 WHERE title = 'The Godfather';

-- 5. THE INNER JOIN: The Final Result
-- This shows ONLY movies that have a matching director in the director table.
SELECT 
    movies.title AS 'Movie Name', 
    directors.director_name AS 'Director',
    directors.country AS 'Director Home'
FROM movies
INNER JOIN directors 
    ON movies.director_id = directors.director_id;

-- 6. THE PRO WAY: Using Aliases
-- 'm' stands for movies, 'd' stands for directors. 
-- This makes the code much cleaner and easier to read.
SELECT m.title, d.director_name
FROM movies m
JOIN directors d ON m.director_id = d.director_id
WHERE d.country = 'UK';