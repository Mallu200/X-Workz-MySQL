/* TASK: Data Retrieval (DQL) */
USE hospital_mgmt_db;

-- 1. COMPLEX JOIN: Show Patient, their Doctor, and Department
CREATE VIEW v_patient_directory AS
SELECT 
    p.first_name AS patient, 
    d.first_name AS doctor, 
    dept.dept_name AS department
FROM patients p
JOIN appointments a ON p.patient_id = a.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id
JOIN departments dept ON d.dept_id = dept.dept_id;

SELECT * FROM v_patient_directory;

-- 2. SUBQUERY: Find patients charged more than the average billing
SELECT first_name, last_name 
FROM patients 
WHERE patient_id IN (
    SELECT patient_id FROM appointments WHERE billing_amount > (SELECT AVG(billing_amount) FROM appointments)
);

-- 3. SELF-JOIN: Show patient and their emergency contact person
SELECT 
    p1.first_name AS Patient, 
    p2.first_name AS Emergency_Contact
FROM patients p1
LEFT JOIN patients p2 ON p1.emergency_contact_id = p2.patient_id;
