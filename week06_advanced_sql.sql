-- =========================================================
-- Advanced SQL Analysis  |  Week 6 Project
-- Author: Licia Soyinka
-- Database: W3Schools sample database (SQL Server -> uses TOP)
-- Skills: window functions (RANK, PARTITION BY, running totals, LAG),
--         CTEs (single & multiple), query best practices
-- =========================================================


-- Q1. Rank ALL products by price, highest first.  (RANK window function)
SELECT ProductName, Price,
  RANK() OVER (ORDER BY Price DESC) AS PriceRank
FROM Products;


-- Q2. Rank products by price WITHIN each category.  (PARTITION BY)
-- Same as Q1, but the ranking restarts at 1 for every category.
SELECT ProductName, CategoryID, Price,
  RANK() OVER (PARTITION BY CategoryID ORDER BY Price DESC) AS RankInCategory
FROM Products;


-- Q3. Running total of product prices, in ProductID order.  (SUM window function)
-- Each row adds its price to the total above it, like a bank balance.
SELECT ProductName, Price,
  SUM(Price) OVER (ORDER BY ProductID) AS RunningTotal
FROM Products;


-- Q4. Top 3 most expensive products in EACH category.  (CTE + RANK)
-- Rank inside the CTE, then filter to r <= 3 in the main query.
-- (A window function can't go in WHERE, so the CTE lets us filter it.)
WITH Ranked AS (
  SELECT ProductName, CategoryID, Price,
    RANK() OVER (PARTITION BY CategoryID ORDER BY Price DESC) AS r
  FROM Products
)
SELECT * FROM Ranked
WHERE r <= 3;


-- Q5. Each product's price change vs the PREVIOUS product.  (LAG)
-- Positive = price rose vs the row before; first row is NULL (nothing behind it).
-- Swap ProductID for a date and this becomes month-over-month change.
SELECT ProductName, Price,
  Price - LAG(Price) OVER (ORDER BY ProductID) AS ChangeFromPrev
FROM Products;


-- Q6. How many products fall in each price tier?  (TWO CTEs)
-- Tiers: label each product; TierCounts: count per label. The second CTE reads from the first.
WITH Tiers AS (
  SELECT ProductName, Price,
    CASE WHEN Price >= 100 THEN 'High'
         WHEN Price >= 50  THEN 'Medium'
         ELSE 'Low' END AS PriceTier
  FROM Products
),
TierCounts AS (
  SELECT PriceTier, COUNT(*) AS NumProducts
  FROM Tiers
  GROUP BY PriceTier
)
SELECT * FROM TierCounts
ORDER BY NumProducts DESC;


-- Q7. Clean, commented query (performance & readability best practice).
-- Named columns instead of SELECT *, early WHERE filter, clear comment.
-- Show the products in category 1.
SELECT ProductName, CategoryID, Price
FROM Products
WHERE CategoryID = 1;
