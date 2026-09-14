-- create a database SQLmasterDB

CREATE DATABASE SQLMasterDB;

/*
SQLMasterDB
│
├── Departments
├── Employees
├── Projects
├── Customers
└── Orders
*/

USE SQLMasterDB;

-- =========================================
-- 1. EMPLOYEES
-- =========================================

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Gender VARCHAR(10),
    DepartmentID INT,
    ManagerID INT NULL,
    Salary DECIMAL(10,2),
    HireDate DATE,
    DateOfBirth DATE,
    JobTitle VARCHAR(100),

    FOREIGN KEY (DepartmentID)
        REFERENCES Departments(DepartmentID),

    FOREIGN KEY (ManagerID)
        REFERENCES Employees(EmployeeID)
);


-- =========================================
-- 2. INSERT EMPLOYEE DATA
-- =========================================

INSERT INTO Employees
(
    EmployeeID,
    FirstName,
    LastName,
    Email,
    Gender,
    DepartmentID,
    ManagerID,
    Salary,
    HireDate,
    DateOfBirth,
    JobTitle
)
VALUES
(1, 'Arjun', 'Mehta', 'arjun.mehta@company.com', 'Male', 1, NULL, 120000, '2018-01-15', '1988-05-20', 'IT Director'),

(2, 'Neha', 'Sharma', 'neha.sharma@company.com', 'Female', 1, 1, 95000, '2019-03-10', '1990-08-12', 'IT Manager'),

(3, 'Rohan', 'Verma', 'rohan.verma@company.com', 'Male', 1, 2, 80000, '2020-06-15', '1995-02-18', 'Senior Developer'),

(4, 'Ananya', 'Singh', 'ananya.singh@company.com', 'Female', 1, 2, 70000, '2021-01-20', '1998-11-05', 'Developer'),

(5, 'Karan', 'Patel', 'karan.patel@company.com', 'Male', 1, 2, 70000, '2021-09-12', '1997-04-25', 'Developer'),

(6, 'Priya', 'Nair', 'priya.nair@company.com', 'Female', 2, 1, 90000, '2019-05-18', '1991-07-14', 'HR Manager'),

(7, 'Aman', 'Gupta', 'hr.shared@company.com', 'Male', 2, 6, 55000, '2022-02-10', '1999-03-22', 'HR Executive'),

(8, 'Sneha', 'Rao', 'hr.shared@company.com', 'Female', 2, 6, 55000, '2022-07-15', '1998-09-17', 'Recruiter'),

(9, 'Vikram', 'Shah', 'vikram.shah@company.com', 'Male', 3, 1, 100000, '2018-11-25', '1989-12-03', 'Finance Manager'),

(10, 'Ankit', 'Jain', 'ankit.jain@company.com', 'Male', 3, 9, 65000, '2020-04-20', '1996-06-10', 'Accountant'),

(11, 'Simran', 'Kaur', 'simran.kaur@company.com', 'Female', 3, 9, 65000, '2021-08-30', '1997-01-28', 'Financial Analyst'),

(12, 'Rahul', 'Das', 'rahul.das@company.com', 'Male', 4, 1, 85000, '2019-09-05', '1992-10-11', 'Marketing Manager'),

(13, 'Aditi', 'Roy', 'aditi.roy@company.com', 'Female', 4, 12, 60000, '2022-01-12', '1999-05-19', 'Marketing Executive'),

(14, 'Manish', 'Kumar', 'manish.kumar@company.com', 'Male', 5, 1, 88000, '2019-12-01', '1991-03-16', 'Sales Manager'),

(15, 'Tanvi', 'Joshi', 'tanvi.joshi@company.com', 'Female', 5, 14, 50000, '2023-02-20', '2000-08-25', 'Sales Executive'),

(16, 'Arman', 'Ali', 'arman.ali@company.com', 'Male', 5, 14, 50000, '2023-06-15', '2000-11-30', 'Sales Executive'),

(17, 'Dev', 'Malhotra', 'dev.malhotra@company.com', 'Male', 6, 1, 82000, '2020-01-10', '1993-02-09', 'Operations Manager'),

(18, 'Nitin', 'Sinha', 'nitin.sinha@company.com', 'Male', 6, 17, 58000, '2022-05-25', '1998-07-21', 'Operations Executive'),

(19, 'Ishan', 'Kapoor', 'ishan.kapoor@company.com', 'Male', 7, 1, 92000, '2020-10-18', '1992-12-15', 'Research Lead'),

(20, 'Varun', 'Singh', 'varun.singh@company.com', 'Male', 7, 19, 62000, '2023-01-05', '1999-09-09', 'Research Analyst');


-- =========================================
-- 3. PROJECTS
-- =========================================

CREATE TABLE Projects
(
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    ManagerID INT,
    Budget DECIMAL(12,2),
    StartDate DATE,
    EndDate DATE,

    FOREIGN KEY (DepartmentID)
        REFERENCES Departments(DepartmentID),

    FOREIGN KEY (ManagerID)
        REFERENCES Employees(EmployeeID)
);


INSERT INTO Projects
(
    ProjectID,
    ProjectName,
    DepartmentID,
    ManagerID,
    Budget,
    StartDate,
    EndDate
)
VALUES
(101, 'Website Redesign', 1, 2, 250000, '2023-01-10', '2023-06-30'),
(102, 'Mobile Banking App', 1, 2, 500000, '2023-03-15', '2024-02-28'),
(103, 'Recruitment Automation', 2, 6, 150000, '2023-04-01', '2023-12-31'),
(104, 'Financial Analysis System', 3, 9, 300000, '2022-07-01', '2023-05-31'),
(105, 'Marketing Campaign', 4, 12, 120000, '2023-02-01', '2023-05-30'),
(106, 'Sales Dashboard', 5, 14, 180000, '2023-05-10', '2024-01-31'),
(107, 'Operations Optimization', 6, 17, 220000, '2022-11-15', '2023-10-31'),
(108, 'Research AI Model', 7, 19, 450000, '2023-01-20', '2024-06-30');


-- =========================================
-- 4. CUSTOMERS
-- =========================================

CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    City VARCHAR(50),
    SignupDate DATE
);


INSERT INTO Customers
(
    CustomerID,
    FirstName,
    LastName,
    Email,
    City,
    SignupDate
)
VALUES
(1, 'Rahul', 'Sharma', 'rahul@gmail.com', 'Ranchi', '2022-01-10'),
(2, 'Priya', 'Singh', 'priya@gmail.com', 'Delhi', '2022-03-15'),
(3, 'Amit', 'Kumar', 'amit@gmail.com', 'Mumbai', '2022-05-20'),
(4, 'Sneha', 'Verma', 'sneha@gmail.com', 'Ranchi', '2022-07-11'),
(5, 'Rohan', 'Das', 'rohan@gmail.com', 'Kolkata', '2022-09-25'),
(6, 'Anjali', 'Roy', 'anjali@gmail.com', 'Delhi', '2023-01-05'),
(7, 'Vivek', 'Patel', 'vivek@gmail.com', 'Ahmedabad', '2023-02-14'),
(8, 'Neha', 'Gupta', 'neha@gmail.com', 'Ranchi', '2023-04-18'),
(9, 'Karan', 'Jain', 'karan@gmail.com', 'Mumbai', '2023-06-20'),
(10, 'Pooja', 'Nair', 'pooja@gmail.com', 'Bangalore', '2023-08-30');


-- =========================================
-- 5. ORDERS
-- =========================================

CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    Status VARCHAR(20),

    FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);


INSERT INTO Orders
(
    OrderID,
    CustomerID,
    OrderDate,
    TotalAmount,
    Status
)
VALUES
(1001, 1, '2023-01-15', 2500, 'Completed'),
(1002, 2, '2023-02-20', 4500, 'Completed'),
(1003, 3, '2023-03-10', 1800, 'Pending'),
(1004, 1, '2023-04-12', 3200, 'Completed'),
(1005, 4, '2023-05-05', 5200, 'Completed'),
(1006, 5, '2023-06-18', 1500, 'Cancelled'),
(1007, 6, '2023-07-22', 6700, 'Completed'),
(1008, 7, '2023-08-14', 2900, 'Pending'),
(1009, 8, '2023-09-25', 4100, 'Completed'),
(1010, 9, '2023-10-10', 7500, 'Completed'),
(1011, 10, '2023-11-19', 2200, 'Completed'),
(1012, 3, '2023-12-05', 5600, 'Completed'),
(1013, 5, '2024-01-15', 3100, 'Pending'),
(1014, 1, '2024-02-20', 4800, 'Completed'),
(1015, 8, '2024-03-12', 7200, 'Completed');


-- =========================================
-- 6. VERIFY DATABASE
-- =========================================

SELECT * FROM Departments;

SELECT * FROM Employees;

SELECT * FROM Projects;

SELECT * FROM Customers;

SELECT * FROM Orders;


-- =========================================
-- 7. SHOW ALL TABLES
-- =========================================

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';
