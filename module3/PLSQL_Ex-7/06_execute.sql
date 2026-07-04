SET SERVEROUTPUT ON;

---------------------------------------
-- Customer Package
---------------------------------------

BEGIN

CustomerManagement.AddCustomer
(
3,
'Anjali',
40000
);

CustomerManagement.UpdateCustomer
(
3,
'Anjali Reddy'
);

COMMIT;

END;
/

SELECT CustomerManagement.GetCustomerBalance(3)

AS Customer_Balance

FROM DUAL;

---------------------------------------
-- Employee Package
---------------------------------------

BEGIN

EmployeeManagement.HireEmployee
(
3,
'Sneha',
50000
);

EmployeeManagement.UpdateEmployee
(
3,
'Sneha Rao'
);

COMMIT;

END;
/

SELECT EmployeeManagement.AnnualSalary(3)

AS Annual_Salary

FROM DUAL;

---------------------------------------
-- Account Package
---------------------------------------

BEGIN

AccountOperations.OpenAccount
(
104,
3,
40000
);

COMMIT;

END;
/

SELECT AccountOperations.TotalBalance(1)

AS Total_Balance

FROM DUAL;

BEGIN

AccountOperations.CloseAccount(104);

COMMIT;

END;
/

SELECT * FROM Accounts_E7;