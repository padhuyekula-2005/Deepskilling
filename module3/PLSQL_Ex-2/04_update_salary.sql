CREATE OR REPLACE PROCEDURE UpdateSalary
(
    p_empid NUMBER,
    p_percent NUMBER
)
IS
BEGIN

    UPDATE Employees_e2
    SET Salary = Salary + (Salary*p_percent/100)
    WHERE EmployeeID = p_empid;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE NO_DATA_FOUND;
    END IF;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Salary Updated');

EXCEPTION

    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee ID Not Found');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);

END;
/