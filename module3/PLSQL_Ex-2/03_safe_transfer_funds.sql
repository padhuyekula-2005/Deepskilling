CREATE OR REPLACE PROCEDURE SafeTransferFunds
(
    p_fromAccount NUMBER,
    p_toAccount NUMBER,
    p_amount NUMBER
)
IS
    v_balance NUMBER;
BEGIN

    SELECT Balance
    INTO v_balance
    FROM Accounts_e2
    WHERE AccountID = p_fromAccount;

    IF v_balance < p_amount THEN
        RAISE_APPLICATION_ERROR(-20001,'Insufficient Funds');
    END IF;

    UPDATE Accounts_e2
    SET Balance = Balance - p_amount
    WHERE AccountID = p_fromAccount;

    UPDATE Accounts_e2
    SET Balance = Balance + p_amount
    WHERE AccountID = p_toAccount;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Transfer Successful');

EXCEPTION

    WHEN OTHERS THEN

        ROLLBACK;

        DBMS_OUTPUT.PUT_LINE('Error : ' || SQLERRM);

END;
/