SET SERVEROUTPUT ON;

------------------------------------
-- Scenario 1
------------------------------------

SELECT CustomerName,
CalculateAge(DateOfBirth) AS Age
FROM Customers_E4;

------------------------------------
-- Scenario 2
------------------------------------

SELECT CalculateMonthlyInstallment
(
100000,
10,
5
)
AS Monthly_Installment
FROM DUAL;

------------------------------------
-- Scenario 3
------------------------------------

SELECT HasSufficientBalance
(
101,
20000
)
AS Result
FROM DUAL;