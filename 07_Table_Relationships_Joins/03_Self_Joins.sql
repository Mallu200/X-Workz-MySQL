/* TOPIC: SELF JOIN
Scenario: A user referring another user to sign up for Netflix.
*/

USE netflix_db;

-- 1. PREPARATION: Add a 'referrer_id' column to your users table
-- This column stores the ID of ANOTHER user from the same table.
ALTER TABLE users ADD COLUMN referrer_id INT;

-- 2. DATA SETUP: Let's add some users and link them
-- Insert some test users (if not already there)
INSERT INTO users (user_id, first_name, last_name, referrer_id) VALUES 
(1, 'Alice', 'Johnson', NULL),   -- Alice joined on her own
(2, 'Bob', 'Smith', 1),          -- Alice referred Bob
(3, 'Charlie', 'Brown', 1),      -- Alice also referred Charlie
(4, 'David', 'Wilson', 2);       -- Bob referred David

-- 3. THE SELF JOIN: Finding who referred whom
-- We treat the 'users' table as TWO separate tables: 
-- 'u1' (The New User) and 'u2' (The Person who referred them).
SELECT 
    u1.first_name AS 'New Member', 
    u2.first_name AS 'Referred By'
FROM users u1
INNER JOIN users u2 
    ON u1.referrer_id = u2.user_id;

/* EXPLANATION:
- u1.first_name: The person being referred.
- u2.first_name: The person who sent the invite.
- The link: u1.referrer_id must match u2.user_id.
*/

-- 4. ADVANCED: Show ALL users, even those who weren't referred by anyone
-- (Alice will show 'NULL' for 'Referred By')
SELECT 
    u1.first_name AS 'Member Name', 
    u2.first_name AS 'Invited By'
FROM users u1
LEFT JOIN users u2 
    ON u1.referrer_id = u2.user_id;