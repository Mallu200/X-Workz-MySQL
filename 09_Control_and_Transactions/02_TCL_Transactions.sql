/* TOPIC: TCL (Transaction Control Language)
Scenario: Preventing "Free Access" if a payment fails.
*/

USE netflix_db;

-- 1. PREPARATION: Add 'status' to users and create the payments table
ALTER TABLE users ADD COLUMN status VARCHAR(20) DEFAULT 'Free';

CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    amount DECIMAL(5,2),
    payment_date DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- 2. THE SUCCESS SCENARIO (COMMIT)
-- Everything works, so we save the changes permanently.
START TRANSACTION;

    -- Step A: Upgrade user
    UPDATE users SET status = 'Premium' WHERE user_id = 1;

    -- Step B: Record the money
    INSERT INTO payments (user_id, amount, payment_date) 
    VALUES (1, 15.99, NOW());

COMMIT; -- This "saves" both steps to the disk.


-- 3. THE FAILURE SCENARIO (ROLLBACK)
-- Imagine the payment record fails (e.g., wrong user_id).
START TRANSACTION;

    -- Step A: Upgrade user
    UPDATE users SET status = 'Premium' WHERE user_id = 2;

    -- Step B: (Fails because user 999 doesn't exist)
    -- If this line errors out, we don't want Step A to stay!
    INSERT INTO payments (user_id, amount, payment_date) 
    VALUES (999, 15.99, NOW()); 

ROLLBACK; -- This "undoes" Step A. User 2 stays 'Free'.


-- 4. VERIFY THE RESULT
SELECT user_id, first_name, status FROM users;
SELECT * FROM payments;