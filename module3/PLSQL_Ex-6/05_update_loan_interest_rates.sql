SET SERVEROUTPUT ON;

DECLARE

CURSOR UpdateLoanInterestRates IS

SELECT LoanID,
InterestRate

FROM Loans_E6

FOR UPDATE;

v_loan UpdateLoanInterestRates%ROWTYPE;

BEGIN

OPEN UpdateLoanInterestRates;

LOOP

FETCH UpdateLoanInterestRates
INTO v_loan;

EXIT WHEN UpdateLoanInterestRates%NOTFOUND;

UPDATE Loans_E6

SET InterestRate=InterestRate+0.5

WHERE CURRENT OF UpdateLoanInterestRates;

END LOOP;

CLOSE UpdateLoanInterestRates;

COMMIT;

DBMS_OUTPUT.PUT_LINE('Loan Interest Rates Updated');

END;
/