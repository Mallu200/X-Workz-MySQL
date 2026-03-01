/* PROJECT: City General Hospital Management
TASK: Creating the Schema (DDL)
*/

CREATE DATABASE hospital_mgmt_db;
USE hospital_mgmt_db;

-- 1. Departments Table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100) NOT NULL UNIQUE
);

-- 2. Doctors Table (Linked to Departments)
CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    specialization VARCHAR(100),
    dept_id INT,
    experience_years INT CHECK (experience_years >= 0),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- 3. Patients Table (Self-Join capability for Emergency Contacts)
CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT CHECK (age > 0),
    gender CHAR(1),
    emergency_contact_id INT, -- To be used for Self-Join
    status VARCHAR(20) DEFAULT 'Admitted',
    FOREIGN KEY (emergency_contact_id) REFERENCES patients(patient_id)
);

-- 4. Appointments Table (The "Bridge" table for Joins)
CREATE TABLE appointments (
    app_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    app_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    billing_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

-- Optimization: Index for fast patient searches
CREATE INDEX idx_patient_name ON patients(last_name);