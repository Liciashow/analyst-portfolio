-- =========================================================
-- SQL Business Questions  |  Week 4 Project
-- Author: Licia Soyinka
-- Database: W3Schools sample database (runs on SQL Server -> uses TOP)
-- Each query answers one real business question.
-- =========================================================


-- Q1. How many customers are there in total?
SELECT COUNT(*) AS TotalCustomers
FROM Customers;


-- Q2. How many customers are in each country?
SELECT Country, COUNT(*) AS NumCustomers
FROM Customers
GROUP BY Country;


-- Q3. Which countries have more than 5 customers?
SELECT Country, COUNT(*) AS NumCustomers
FROM Customers
GROUP BY Country
HAVING COUNT(*) > 5;


-- Q4. What are the top 5 most expensive products?
SELECT TOP 5 ProductName, Price
FROM Products
ORDER BY Price DESC;


-- Q5. Show each order with the customer's name (JOIN two tables).
SELECT o.OrderID, c.CustomerName
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID;


-- Q6. Who are the top 5 customers by number of orders? (JOIN + GROUP BY + ORDER BY)
SELECT TOP 5 c.CustomerName, COUNT(*) AS NumOrders
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerName
ORDER BY COUNT(*) DESC;


-- Q7. What is the average product price in each category?
SELECT CategoryID, AVG(Price) AS AvgPrice
FROM Products
GROUP BY CategoryID;


-- Q8. Which customers have a name that starts with 'A'?
SELECT CustomerName, Country
FROM Customers
WHERE CustomerName LIKE 'A%';
