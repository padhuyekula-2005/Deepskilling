CREATE OR REPLACE PACKAGE EmployeeManagement AS

PROCEDURE HireEmployee
(
p_id NUMBER,
p_name VARCHAR2,
p_salary NUMBER
);

PROCEDURE UpdateEmployee
(
p_id NUMBER,
p_name VARCHAR2
);

FUNCTION AnnualSalary
(
p_id NUMBER
)

RETURN NUMBER;

END EmployeeManagement;
/
CREATE OR REPLACE PACKAGE BODY EmployeeManagement AS

PROCEDURE HireEmployee
(
p_id NUMBER,
p_name VARCHAR2,
p_salary NUMBER
)

IS
BEGIN

INSERT INTO Employees_E7

VALUES(p_id,p_name,p_salary);

END;

PROCEDURE UpdateEmployee
(
p_id NUMBER,
p_name VARCHAR2
)

IS
BEGIN

UPDATE Employees_E7

SET EmployeeName=p_name

WHERE EmployeeID=p_id;

END;

FUNCTION AnnualSalary
(
p_id NUMBER
)

RETURN NUMBER

IS

v_salary NUMBER;

BEGIN

SELECT Salary

INTO v_salary

FROM Employees_E7

WHERE EmployeeID=p_id;

RETURN v_salary*12;

END;

END EmployeeManagement;
/