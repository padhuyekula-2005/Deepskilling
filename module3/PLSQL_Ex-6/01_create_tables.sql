-- Customers Table

CREATE TABLE Customers_E6
(
    CustomerID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50)
);

-- Accounts Table

CREATE TABLE Accounts_E6
(
    AccountID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    Balance NUMBER(10,2)
);

-- Transactions Table

CREATE TABLE Transactions_E6
(
    TransactionID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    TransactionDate DATE,
    TransactionType VARCHAR2(20),
    Amount NUMBER(10,2)
);

-- Loans Table

CREATE TABLE Loans_E6
(
    LoanID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    LoanAmount NUMBER(10,2),
    InterestRate NUMBER(5,2)
);