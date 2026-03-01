/* TASK: Record Modification & Transactions (TCL) */
USE hospital_mgmt_db;

-- Scenario: A patient pays and is discharged
START TRANSACTION;

    -- Update status
    UPDATE patients SET status = 'Discharged' WHERE patient_id = 1;

    -- Update bill (Add a late fee)
    UPDATE appointments SET billing_amount = billing_amount + 50 WHERE patient_id = 1;

    SAVEPOINT discharge_ready;

    -- Oops! If something goes wrong here, we can rollback to the savepoint
    -- ROLLBACK TO SAVEPOINT discharge_ready;

COMMIT;