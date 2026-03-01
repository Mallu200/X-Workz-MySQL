/* TASK: Data Cleanup & Security (DCL) */
USE hospital_mgmt_db;

-- 1. DELETE: Remove a specific appointment (Safe Mode)
DELETE FROM appointments WHERE app_id = 1;

-- 2. SECURITY: Create a 'Nurse' role who can only see data, not delete it
CREATE USER 'nurse_jane'@'localhost' IDENTIFIED BY 'NursePass123';
GRANT SELECT ON hospital_mgmt_db.* TO 'nurse_jane'@'localhost';
-- Notice: No DELETE or DROP permissions granted for safety!

-- 3. Verify
SHOW GRANTS FOR 'nurse_jane'@'localhost';