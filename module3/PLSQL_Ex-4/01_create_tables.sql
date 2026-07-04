-- Customers Table

CREATE TABLE Customers_E4
(
    CustomerID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50),
    DateOfBirth DATE
);

-- Accounts Table

CREATE TABLE Accounts_E4
(
    AccountID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50),
    Balance NUMBER(10,2)
);