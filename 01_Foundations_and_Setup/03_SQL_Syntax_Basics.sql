/* TOPIC: SQL Syntax Basics
   Real-World: Preparing the workspace for our Netflix project.
*/

-- 1. How to create a comment (this line won't run)
# Another way to create a comment

/* This is a 
   multi-line comment 
*/

-- 2. Case Sensitivity
-- SQL keywords (SELECT, CREATE) are NOT case-sensitive, 
-- but it is best practice to write them in UPPERCASE.

-- 3. The Semicolon (;)
-- Every complete SQL statement must end with a semicolon. 
-- It tells MySQL: "I am done with this command, run it now."

-- 4. Checking your version
SELECT VERSION(); 

-- 5. Show existing databases on your system
SHOW DATABASES;