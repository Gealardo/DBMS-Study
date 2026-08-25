USE MyDatabase;
--THIS IS SINGLE LINE COMMENT 
/*THIS IS
MULTI LINE
COMMENT
*/

--01 ALL ROWS & COLOMN
SELECT * --star represent all
FROM customers; -- from customers table
--CHECK THE OUTPUT
/*

id          first_name                                         country                                            score
----------- -------------------------------------------------- -------------------------------------------------- -----------
1           Maria                                              Germany                                            350
2            John                                              USA                                                900
3           Georg                                              UK                                                 750
4           Martin                                             Germany                                            500
5           Peter                                              USA                                                0
6           Gea                                                India                                              600
7           Ardo                                               USA                                                NULL
*/
SELECT *
FROM orders;
/*
order_id    customer_id order_date sales
----------- ----------- ---------- -----------
1001        1           2021-01-11 35
1002        2           2021-04-05 15
1003        3           2021-06-18 20
1004        6           2021-08-31 10

(4 rows affected)
*/
--02 SPECIFIC COLUMN
SELECT
 first_name,  --column 1 i need
 country  -- 2nd i need
FROM customers  --from this table
 
--03 FILTER DATA (based on the conditions)
SELECT *  --select all row,col
FROM customers  -- from table
WHERE score != 0; --this is the condition for filtering 

SELECT
 country,
 first_name
FROM customers
WHERE country = 'Germany'

-- SORTING OF DATA USING ( ORDER BY COL ASC(DEFAULT)/DEC )
SELECT *
FROM customers
ORDER BY SCORE 

SELECT *
FROM customers
ORDER BY SCORE ASC

SELECT *
FROM customers
ORDER BY SCORE DESC

SELECT *
FROM customers
ORDER BY country ASC

SELECT *
FROM customers
ORDER BY first_name ASC,SCORE DESC

--GROUP BY  AGGREGATE YOU DATA

--SCORE SUM BY COUNTRY
SELECT
 country, -- category
 SUM(score) -- aggregation
FROM customers
GROUP BY country

--
SELECT
 country, -- category
 SUM(score) AS total_score -- aggregation
FROM customers
GROUP BY country

--total sore and total no. of customers
SELECT
 country,
 COUNT(id) AS No_of_Customers,
 sum(score) AS total_score
FROM customers
GROUP BY country
ORDER BY total_score DESC

--FILTER AGGREGATED DATA (HAVING)
--want to filter the data before aggregation use WHERE otherwise HAVING
SELECT
 country,
 COUNT(id) AS No_of_Customers,
 sum(score) AS total_score
FROM customers
--(WHERE SCORE>400)
GROUP BY country
HAVING SUM(score) > 800

--UNIQUE LIST
SELECT DISTINCT
 country AS unique_country
FROM customers

-- LIMIT YOUR DATA
SELECT *
FROM customers
--need just 3 rows from top
SELECT TOP 3 *
FROM customers

/*
-----summary-----
SELECT DISTINCT TOP N
 COL1, ->catogry
 SUM(score)->aggrigate
FROM table
WHERE score!= 0 ->filter before group
GROUP BY col1 -> cotegory to merge
HAVING sum(score)!=0
ORDER BY col1 ASC(by default)/DESC
*/


