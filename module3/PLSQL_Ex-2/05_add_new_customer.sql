CREATE OR REPLACE PROCEDURE AddNewCustomer
(
    p_id NUMBER,
    p_name VARCHAR2,
    p_city VARCHAR2
)
IS
BEGIN

    INSERT INTO Customers_e2
    VALUES(p_id,p_name,p_city);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Customer Added Successfully');

EXCEPTION

    WHEN DUP_VAL_ON_INDEX THEN

        DBMS_OUTPUT.PUT_LINE('Customer ID Already Exists');

    WHEN OTHERS THEN

        DBMS_OUTPUT.PUT_LINE(SQLERRM);

END;
/