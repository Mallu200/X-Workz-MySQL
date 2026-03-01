/* TASK: Populating the Hospital (DML) */
USE hospital_mgmt_db;

-- Insert Departments
INSERT INTO departments (dept_name) VALUES ('Cardiology'), ('Neurology'), ('Orthopedics');

-- Insert Doctors
INSERT INTO doctors (first_name, specialization, dept_id, experience_years) VALUES 
('Dr. Smith', 'Heart Surgeon', 1, 15),
('Dr. Adams', 'Brain Specialist', 2, 10),
('Dr. Taylor', 'Bone Specialist', 3, 8);

-- Insert Patients (Including a referral/contact link for Self-Join)
INSERT INTO patients (first_name, last_name, age, gender, emergency_contact_id) VALUES 
('John', 'Doe', 45, 'M', NULL),
('Jane', 'Doe', 40, 'F', 1), -- John is Jane's contact
('Mark', 'Zucker', 25, 'M', NULL);

-- Insert Appointments (Transactions will handle this later)
INSERT INTO appointments (patient_id, doctor_id, billing_amount) VALUES 
(1, 1, 500.00),
(2, 2, 750.00);