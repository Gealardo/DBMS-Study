-- maximum salary in each department
SELECT 
 departmentid,
 MAX(salary) AS maxi_salary
 FROM employees
 GROUP BY departmentid
 ORDER BY departmentid ASC
  
-- DEPARTMENTS HAVING MORE THAN 3 EMPLOYEES
SELECT 
 departmentid,
 COUNT(*) AS NUM_OF_EMPLOYEE
 FROM employees
 GROUP BY departmentid
 HAVING COUNT(*) >= 3
 ORDER BY departmentid ASC

-- DUPLICATE MAIL
SELECT 
 email, 
 COUNT(*) AS mail_count
FROM employees
GROUP BY email
HAVING COUNT(*) > 1
  
--EMPLOYEE JOINED BEFORE 5 YEARS
SELECT 
 firstname
FROM employees
WHERE hiredate <= CURRENT_DATE - INTERVAL '5 YEAR';

-- LAST 3 HIRED EMPLOYEE
SELECT *
FROM employees
ORDER BY hiredate DESC
LIMIT 3;

--ODD ID EMPLOYEES
SELECT*
FROM employees
WHERE employeeid %2  = 1;

-- SECOND LARGEST SALARY
-- OFFSET skips a specific number of rows before it starts returning data from your query result
SELECT 
 firstname
FROM employees
ORDER BY Salary DESC
LIMIT 1 OFFSET 1;

--OR
SELECT 
 firstname,
 MAX(Salary)  AS second_lar_salary
FROM employees
WHERE Salary <(SELECT MAX(Salary) FROM employees)
GROUP BY firstname
ORDER BY second_lar_salary DESC
LIMIT 1;
