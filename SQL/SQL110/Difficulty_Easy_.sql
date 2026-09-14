--1.Select all records from a table
SELECT*
FROM Departments

SELECT*
FROM Employees

SELECT*
FROM Projects

SELECT*
FROM Orders

--2.Select specific columns from a table

SELECT
 FirstName,
 LastName
FROM Employees

--3.Filter records using WHERE clause

SELECT *
FROM Orders
WHERE Status = 'Cancelled'

SELECT *
FROM Orders
WHERE Status = 'Pending'

--4.Sort records in ascending order

SELECT *
FROM Orders
ORDER BY TotalAmount ASC


--5.Sort records in descending order
SELECT *
FROM Orders
ORDER BY TotalAmount DESC


--6.Count total number of records in a table

SELECT
 COUNT(EmployeeID) 
 FROM Employees

 SELECT
 COUNT(*) AS total_Employees
 FROM Employees

--7.Find the maximum price
 SELECT
 MAX(TotalAmount) AS Max_spend
 FROM Orders

--8.Find the minimum price

 SELECT
 MIN(TotalAmount) AS MIN_spend
 FROM Orders

--9.Calculate the average price

 SELECT
 AVG(TotalAmount) AS average_spend
 FROM Orders

--10.Find the sum of all Amount
 SELECT
 SUM(TotalAmount) AS TotalAmount_sum
 FROM Orders
