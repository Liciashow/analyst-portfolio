-- =========================================================
-- Intermediate SQL Analysis  |  Week 5 Project
-- Author: Licia Soyinka
-- Database: W3Schools sample database (SQL Server -> uses TOP)
-- Skills: LEFT JOIN, multi-table JOIN, GROUP BY/HAVING, subqueries, IN/NOT IN, CASE
-- =========================================================


-- Q1. Which customers have NEVER placed an order?  (LEFT JOIN + IS NULL)
SELECT c.CustomerName
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;


-- Q2. Which products are priced ABOVE the average price?  (subquery in WHERE)
SELECT ProductName, Price
FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);


-- Q3. Tag each product as High / Medium / Low by price.  (CASE)
SELECT ProductName, Price,
  CASE WHEN Price >= 100 THEN 'High'
       WHEN Price >= 50  THEN 'Medium'
       ELSE 'Low' END AS PriceTier
FROM Products;


-- Q4. Which customers HAVE placed at least one order?  (IN subquery)
SELECT CustomerName
FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);


-- Q5. How many orders did each shipper handle?  (JOIN + GROUP BY)
SELECT s.ShipperName, COUNT(*) AS NumOrders
FROM Orders o
INNER JOIN Shippers s ON o.ShipperID = s.ShipperID
GROUP BY s.ShipperName;


-- Q6. How many products fall in each price tier?  (CASE + GROUP BY)
SELECT
  CASE WHEN Price >= 100 THEN 'High'
       WHEN Price >= 50  THEN 'Medium'
       ELSE 'Low' END AS PriceTier,
  COUNT(*) AS NumProducts
FROM Products
GROUP BY
  CASE WHEN Price >= 100 THEN 'High'
       WHEN Price >= 50  THEN 'Medium'
       ELSE 'Low' END;


-- Q7. Show each order with the customer's name AND who shipped it.  (3-table JOIN)
SELECT o.OrderID, c.CustomerName, s.ShipperName
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
INNER JOIN Shippers s ON o.ShipperID = s.ShipperID;


-- Q8. Which countries have MORE than 5 customers?  (GROUP BY + HAVING)
SELECT Country, COUNT(*) AS NumCustomers
FROM Customers
GROUP BY Country
HAVING COUNT(*) > 5;
