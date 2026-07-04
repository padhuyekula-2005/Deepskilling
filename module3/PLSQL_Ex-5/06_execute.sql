SET SERVEROUTPUT ON;

-----------------------------------------
-- Scenario 1
-----------------------------------------

UPDATE Customers_E5
SET City='Chennai'
WHERE CustomerID=1;

SELECT * FROM Customers_E5;

-----------------------------------------
-- Scenario 2
-----------------------------------------

INSERT INTO Transactions_E5
VALUES
(
1,
101,
'Deposit',
5000
);

SELECT * FROM AuditLog_E5;

-----------------------------------------
-- Scenario 3
-----------------------------------------

INSERT INTO Transactions_E5
VALUES
(
2,
101,
'Withdrawal',
2000
);

SELECT * FROM Transactions_E5;