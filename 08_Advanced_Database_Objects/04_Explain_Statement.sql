/* TOPIC: EXPLAIN
Scenario: Analyzing query performance.
*/

USE netflix_db;

-- Run this to see if MySQL uses the index or does a "Full Table Scan"
EXPLAIN SELECT * FROM movies WHERE title = 'Inception';