SET SERVEROUTPUT ON;

------------------------------------------------
-- Scenario 1
------------------------------------------------

BEGIN
    SafeTransferFunds(101,102,5000);
END;
/

SELECT * FROM Accounts_e2;

------------------------------------------------
-- Scenario 2
------------------------------------------------

BEGIN
    UpdateSalary(2,10);
END;
/

SELECT * FROM Employees_e2;

------------------------------------------------
-- Scenario 3
------------------------------------------------

BEGIN
    AddNewCustomer(3,'Anjali','Chennai');
END;
/

SELECT * FROM Customers_e2;