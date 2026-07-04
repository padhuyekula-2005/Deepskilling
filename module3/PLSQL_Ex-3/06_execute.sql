SET SERVEROUTPUT ON;

-- Scenario 1

BEGIN
    ProcessMonthlyInterest;
END;
/

SELECT * FROM Accounts;

-- Scenario 2

BEGIN
    UpdateEmployeeBonus('IT',10);
END;
/

SELECT * FROM Employees;

-- Scenario 3

BEGIN
    TransferFunds(101,102,5000);
END;
/

SELECT * FROM Accounts;
