/* TOPIC: DROP vs TRUNCATE
Scenario: Cleaning up the database.
*/

-- 1. Create a dummy table for testing
CREATE TABLE test_data (
    id INT,
    temp_note VARCHAR(100)
);

-- 2. TRUNCATE: Deletes all DATA inside the table, but the table stays.
-- Use this if you want to clear the list but keep the "shelf."
TRUNCATE TABLE test_data;

-- 3. DROP: Deletes the DATA and the TABLE structure entirely.
-- Use this to delete the "shelf" and everything on it.
DROP TABLE test_data;

-- 4. DROP DATABASE: Use with extreme caution! 
-- Deletes everything inside netflix_db.
-- DROP DATABASE netflix_db;