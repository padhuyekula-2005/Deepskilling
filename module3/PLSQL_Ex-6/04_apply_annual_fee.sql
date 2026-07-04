SET SERVEROUTPUT ON;

DECLARE

CURSOR ApplyAnnualFee IS

SELECT AccountID,Balance

FROM Accounts_E6

FOR UPDATE;

v_acc ApplyAnnualFee%ROWTYPE;

v_fee NUMBER:=500;

BEGIN

OPEN ApplyAnnualFee;

LOOP

FETCH ApplyAnnualFee
INTO v_acc;

EXIT WHEN ApplyAnnualFee%NOTFOUND;

UPDATE Accounts_E6

SET Balance=Balance-v_fee

WHERE CURRENT OF ApplyAnnualFee;

END LOOP;

CLOSE ApplyAnnualFee;

COMMIT;

DBMS_OUTPUT.PUT_LINE('Annual Fee Applied');

END;
/