/* TOPIC: MySQL Safe Updates 
Scenario: How to bypass the "Error Code: 1175".
*/

-- If MySQL prevents you from updating without a Primary Key in the WHERE clause:

-- To turn OFF safety (use with caution!):
SET SQL_SAFE_UPDATES = 0;

-- Run your updates/deletes...

-- To turn ON safety again (best practice):
SET SQL_SAFE_UPDATES = 1;