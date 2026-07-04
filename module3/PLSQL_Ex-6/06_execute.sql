SET SERVEROUTPUT ON;

-----------------------------------
-- Scenario 1
-----------------------------------

@03_generate_monthly_statements.sql

-----------------------------------
-- Scenario 2
-----------------------------------

@04_apply_annual_fee.sql

SELECT * FROM Accounts_E6;

-----------------------------------
-- Scenario 3
-----------------------------------

@05_update_loan_interest_rates.sql

SELECT * FROM Loans_E6;