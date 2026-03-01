/* TOPIC: CHECK & DEFAULT
Scenario: Setting age limits and automatic values.
*/

USE netflix_db;

CREATE TABLE subscriptions (
    sub_id INT PRIMARY KEY,
    user_id INT,
    plan_type VARCHAR(20) DEFAULT 'Basic', -- If not specified, it becomes 'Basic'
    monthly_fee DECIMAL(5,2),
    age_limit INT,
    
    -- CHECK constraint: Ensures data meets a specific condition
    CONSTRAINT chk_age CHECK (age_limit >= 13),
    -- Another check: Price must be positive
    CONSTRAINT chk_price CHECK (monthly_fee > 0)
);

-- Example: If you try to enter age 10, the database will throw an error.