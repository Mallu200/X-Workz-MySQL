/* TOPIC: AUTO_INCREMENT
Scenario: Letting the database handle the numbering.
*/

USE netflix_db;

CREATE TABLE genres (
    genre_id INT PRIMARY KEY AUTO_INCREMENT, -- Starts at 1 and adds 1 for every new row
    genre_name VARCHAR(50) NOT NULL
);

-- When you INSERT later, you can just ignore the genre_id column!