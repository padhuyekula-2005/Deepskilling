SET SERVEROUTPUT ON;

DECLARE

CURSOR GenerateMonthlyStatements IS

SELECT
CustomerID,
TransactionID,
TransactionType,
Amount,
TransactionDate

FROM Transactions_E6

WHERE EXTRACT(MONTH FROM TransactionDate)=EXTRACT(MONTH FROM SYSDATE)
AND EXTRACT(YEAR FROM TransactionDate)=EXTRACT(YEAR FROM SYSDATE);

v_trans GenerateMonthlyStatements%ROWTYPE;

BEGIN

OPEN GenerateMonthlyStatements;

LOOP

FETCH GenerateMonthlyStatements
INTO v_trans;

EXIT WHEN GenerateMonthlyStatements%NOTFOUND;

DBMS_OUTPUT.PUT_LINE
(
'Customer ID : '||v_trans.CustomerID||
' Transaction : '||v_trans.TransactionType||
' Amount : '||v_trans.Amount
);

END LOOP;

CLOSE GenerateMonthlyStatements;

END;
/