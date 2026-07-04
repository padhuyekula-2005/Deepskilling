-- ACCOUNTS TABLE

CREATE TABLE Accounts (
    AccountID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(50),
    AccountType VARCHAR2(20),
    Balance NUMBER(10,2)
);

-- EMPLOYEES TABLE

CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(50),
    Department VARCHAR2(30),
    Salary NUMBER(10,2)
);