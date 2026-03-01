/* TOPIC: SAVEPOINTS
Scenario: Undoing a "Mistake" without losing all previous work.
*/

USE netflix_db;

-- 1. DATA SETUP: Let's ensure we have an Action movie to "accidentally" delete
INSERT INTO movies (movie_id, title, genre, duration_min, imdb_score) 
VALUES (10, 'Testing Action Movie', 'Action', 120, 5.0)
ON DUPLICATE KEY UPDATE title=title; -- Avoids error if already exists

-- 2. THE TRANSACTION WITH CHECKPOINTS
START TRANSACTION;

    -- OPERATION 1: A legitimate update
    -- Scenario: 'Inception' (ID 1) gets a rating boost.
    UPDATE movies SET imdb_score = 9.5 WHERE movie_id = 1;

    -- CREATE SAVEPOINT: "Game Save"
    -- We are happy with Operation 1, so we mark this spot.
    SAVEPOINT point1;

    -- OPERATION 2: The "Accident"
    -- Scenario: You accidentally delete ALL Action movies instead of just one.
    DELETE FROM movies WHERE genre = 'Action';

    -- CHECK THE DAMAGE: (Optional - if you ran this in Workbench)
    -- You would see that Action movies are gone.

    -- THE FIX: Roll back only to the checkpoint
    -- This brings back the Action movies but KEEPS the Inception update.
    ROLLBACK TO SAVEPOINT point1;

    -- OPERATION 3: The correct update
    -- Now we do what we actually intended.
    DELETE FROM movies WHERE movie_id = 10;

-- 3. FINALIZE: Save the good work
COMMIT;

-- 4. VERIFY: 
-- Inception should be 9.5 (Op 1 kept)
-- Action movies should still exist (Op 2 undone)
-- Movie ID 10 should be gone (Op 3 kept)
SELECT * FROM movies WHERE movie_id IN (1, 10) OR genre = 'Action';