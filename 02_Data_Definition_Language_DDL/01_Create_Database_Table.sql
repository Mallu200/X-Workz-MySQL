/* TOPIC: CREATE 
Scenario: Setting up the Netflix library structure.
*/

-- 1. Create the Database (The Container)
CREATE DATABASE netflix_db;

-- 2. Tell MySQL to use this specific database
USE netflix_db;

-- 3. Create the Movies Table
-- We define the Column Name, Data Type, and Rules (Constraints)
CREATE TABLE movies (
    movie_id INT,                   -- Whole numbers for ID
    title VARCHAR(255),             -- Variable character text (max 255)
    genre VARCHAR(50),              -- e.g., 'Sci-Fi', 'Horror'
    release_year INT,               -- e.g., 2024
    rating DECIMAL(3, 1)            -- e.g., 8.5 or 10.0
);

-- 4. Verify the table was created
SHOW TABLES;

-- 5. See the structure of your table
DESCRIBE movies;