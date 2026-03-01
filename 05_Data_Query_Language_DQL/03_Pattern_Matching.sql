/* TOPIC: LIKE & Wildcards
Scenario: Handling the search bar functionality.
*/

USE netflix_db;

-- 1. The % Wildcard (Represents zero, one, or multiple characters)
-- Find movies STARTING with 'The'
SELECT title FROM movies WHERE title LIKE 'The%';

-- Find movies ENDING with 'tion' (like Inception)
SELECT title FROM movies WHERE title LIKE '%tion';

-- Find movies containing 'Dark' anywhere in the title
SELECT title FROM movies WHERE title LIKE '%Dark%';

-- 2. The _ Wildcard (Represents exactly ONE character)
-- Find a 4-letter word starting with 'I' (like 'It')
SELECT title FROM movies WHERE title LIKE 'I_';