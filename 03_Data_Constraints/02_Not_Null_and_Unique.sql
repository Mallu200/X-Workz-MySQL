/* TOPIC: NOT NULL & UNIQUE
Scenario: Ensuring every user has a valid, one-of-a-kind email.
*/

USE netflix_db;

-- Adding rules to a new table
CREATE TABLE profiles (
    profile_id INT PRIMARY KEY,
    -- NOT NULL means this column cannot be left empty
    profile_name VARCHAR(50) NOT NULL, 
    -- UNIQUE means no two rows can have the same value
    email_address VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- If you try to INSERT a user with a duplicate email, MySQL will block it.