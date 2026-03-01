/* TOPIC: INSERT 
Scenario: Adding new movies and users to the database.
*/

USE netflix_db;

-- 1. Inserting a single record (Specifying all columns)
INSERT INTO movies (movie_id, title, genre, duration_min, imdb_score)
VALUES (1, 'Inception', 'Sci-Fi', 148, 8.8);

-- 2. Inserting multiple records at once (The professional way)
INSERT INTO movies (movie_id, title, genre, duration_min, imdb_score)
VALUES 
(2, 'The Dark Knight', 'Action', 152, 9.0),
(3, 'Interstellar', 'Sci-Fi', 169, 8.6),
(4, 'The Godfather', 'Crime', 175, 9.2),
(5, 'Stranger Things', 'Horror', 50, 8.7);

-- 3. Inserting data into only specific columns
-- (Requires other columns to allow NULL or have a DEFAULT value)
INSERT INTO users (user_id, first_name, last_name)
VALUES (101, 'Rahul', 'Sharma');