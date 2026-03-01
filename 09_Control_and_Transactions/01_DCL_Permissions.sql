/* TOPIC: DCL (Data Control Language)
Scenario: Managing security and user access.
*/

-- 1. Create a new database user
CREATE USER 'analyst_bob'@'localhost' IDENTIFIED BY 'password123';

-- 2. GRANT permissions (Select and Insert only)
GRANT SELECT, INSERT ON netflix_db.* TO 'analyst_bob'@'localhost';

-- 3. REVOKE permissions (Take away the ability to insert)
REVOKE INSERT ON netflix_db.* FROM 'analyst_bob'@'localhost';

-- 4. Check what permissions a user has
SHOW GRANTS FOR 'analyst_bob'@'localhost';

-- 5. Delete a user
DROP USER 'analyst_bob'@'localhost';