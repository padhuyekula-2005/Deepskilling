-- Customers Table

CREATE TABLE Customers_E7
(
    CustomerID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50),
    Balance NUMBER(10,2)
);

-- Employees Table

CREATE TABLE Employees_E7
(
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(50),
    Salary NUMBER(10,2)
);

-- Accounts Table

CREATE TABLE Accounts_E7
(
    AccountID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    Balance NUMBER(10,2)
);