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

--11.Display the first 5 records in SQL
SELECT TOP 3 *
FROM Employees

--12Find distinct values in a column

SELECT DISTINCT 
DepartmentID
FROM Employees

--13.Filter records with multiple conditions using AND

SELECT *
FROM Employees
WHERE Salary >100000 AND Gender = 'Male'

--14 Filter records with multiple conditions using OR
SELECT *
FROM Employees
WHERE Salary >100000 OR Gender = 'Female' 

--15.Find records where a column value is NULL
SELECT *
FROM Employees
WHERE ManagerID Is NULL

--16.Find records where a column value is NOT NULL
SELECT *
FROM Employees
WHERE ManagerID IS NOT NULL

--17.Find records using the LIKE operator
/*

'A%'   Starts with "A" (e.g., Albert, Amanda, Amy, or just "A").
'%son' Ends with "son" (e.g., Jason, Jackson, Tyson).
'%or%' Has "or" anywhere in the middle, start, or end (e.g., Jordan, Taylor, Ortiz).

The _  represents exactly one single character.
'A_'   Starts with "A" and is exactly 2 letters long (e.g., Al, An).
'_a%'  Has "a" as the second letter, followed by anything (e.g., Sam, Daniel, Catherine).
'___' Value must be exactly 3 characters long (e.g., Tom, Ben, Amy).

*/
SELECT *
FROM Employees
WHERE FirstName LIKE '_A%' -- _ means 1 , % means 0 to many.

--18.Find records using the IN operator
-- IN for multiple OR for same column
SELECT*
FROM Employees
WHERE Gender IN('Male','Female')

--19.Find records within a range using BETWEEN
SELECT*
FROM Employees
WHERE Salary BETWEEN 50000 AND 80000

--20.Alias column names
SELECT 
FirstName AS 'First Name', 
Salary AS 'Annual Salary'
FROM employees;

--SHIFTED TO POSTGREEsQL
--22 CONCATE
SELECT ,
  CONACATE(firstname," ",lastname)
FROM customer 
-- --22,23.Convert text to uppercase
SELECT 
 UPPER(firstname),
 LOWER(lastname)
FROM customers 

--24 CURRENT DATE
SELECT CURRENT_DATE;

--name start with A
SELECT *
FROM employees
WHERE firstname LIKE 'A%';

--NO. OF EMPLOYEE
SELECT 
 departmentid,
 COUNT(*) AS employee_count
 FROM employees
 GROUP BY departmentid
 ORDER BY departmentid ASC
