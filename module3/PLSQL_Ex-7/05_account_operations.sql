CREATE OR REPLACE PACKAGE AccountOperations AS

PROCEDURE OpenAccount
(
p_acc NUMBER,
p_cust NUMBER,
p_balance NUMBER
);

PROCEDURE CloseAccount
(
p_acc NUMBER
);

FUNCTION TotalBalance
(
p_cust NUMBER
)

RETURN NUMBER;

END AccountOperations;
/
CREATE OR REPLACE PACKAGE BODY AccountOperations AS

PROCEDURE OpenAccount
(
p_acc NUMBER,
p_cust NUMBER,
p_balance NUMBER
)

IS
BEGIN

INSERT INTO Accounts_E7

VALUES(p_acc,p_cust,p_balance);

END;

PROCEDURE CloseAccount
(
p_acc NUMBER
)

IS
BEGIN

DELETE FROM Accounts_E7

WHERE AccountID=p_acc;

END;

FUNCTION TotalBalance
(
p_cust NUMBER
)

RETURN NUMBER

IS

v_total NUMBER;

BEGIN

SELECT SUM(Balance)

INTO v_total

FROM Accounts_E7

WHERE CustomerID=p_cust;

RETURN v_total;

END;

END AccountOperations;
/