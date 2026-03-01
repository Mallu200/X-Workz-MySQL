/* TOPIC: Primary & Foreign Keys
Scenario: Linking "Users" to their "Watch History".
*/

USE netflix_db;

-- 1. Create Users Table with a Primary Key
CREATE TABLE users (
    user_id INT PRIMARY KEY,        -- Unique identifier for every user
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- 2. Create Watch History Table with a Foreign Key
CREATE TABLE watch_history (
    history_id INT PRIMARY KEY,
    user_id INT,                    -- This must match a user_id in the Users table
    movie_id INT,
    watch_date DATE,
    -- Establishing the link (Relationship)
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Note: A Foreign Key prevents you from adding history for a user who doesn't exist!