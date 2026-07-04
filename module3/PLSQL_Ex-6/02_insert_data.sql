-- Customers

INSERT INTO Customers_E6 VALUES (1,'Ravi');
INSERT INTO Customers_E6 VALUES (2,'Sita');

-- Accounts

INSERT INTO Accounts_E6 VALUES (101,1,50000);
INSERT INTO Accounts_E6 VALUES (102,2,30000);

-- Transactions

INSERT INTO Transactions_E6
VALUES(1,1,SYSDATE,'Deposit',5000);

INSERT INTO Transactions_E6
VALUES(2,2,SYSDATE,'Withdrawal',2000);

-- Loans

INSERT INTO Loans_E6
VALUES(1,1,500000,8.5);

INSERT INTO Loans_E6
VALUES(2,2,300000,9.0);

COMMIT;