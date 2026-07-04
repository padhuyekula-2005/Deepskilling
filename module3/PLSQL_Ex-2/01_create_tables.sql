-- Accounts Table

CREATE TABLE Accounts_e2 (
    AccountID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50),
    Balance NUMBER(10,2)
);

-- Employees Table

CREATE TABLE Employees_e2 (
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(50),
    Salary NUMBER(10,2)
);

-- Customers Table

CREATE TABLE Customers_e2 (
    CustomerID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50),
    City VARCHAR2(30)
);