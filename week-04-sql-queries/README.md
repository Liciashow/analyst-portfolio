# SQL Business Questions

**Author:** Licia Soyinka
**Project:** Week 4 — The Analyst Accelerator
**Tool used:** SQL (SQL Server dialect), practiced on the W3Schools sample database

---

## What This Is
A set of 8 SQL queries that answer real business questions about customers, orders, and products — the kind of questions a manager asks and an analyst answers directly from the database (no exporting to Excel needed).

## The Questions Answered
1. How many customers are there in total?
2. How many customers are in each country?
3. Which countries have more than 5 customers?
4. What are the top 5 most expensive products?
5. Each order shown with the customer's name (a JOIN).
6. The top 5 customers by number of orders (JOIN + GROUP BY + ORDER BY).
7. The average product price in each category.
8. Customers whose name starts with 'A'.

## SQL Skills Demonstrated
- `SELECT`, `WHERE`, `LIKE`
- `ORDER BY` + `TOP` (SQL Server's version of LIMIT)
- Aggregates: `COUNT`, `AVG`
- `GROUP BY` and `HAVING`
- `INNER JOIN` with table aliases

## Key Findings (from the sample database)
- A handful of countries have more than 5 customers (e.g., USA, Germany, France, Brazil, UK).
- The most expensive product is Côte de Blaye.
- Combining a JOIN with GROUP BY reveals the most frequent customers by order count.

## Files
- `week04_business_questions.sql` — all 8 commented queries.

---
*Week 4 portfolio project. Demonstrates the full core of SQL — filtering, sorting, aggregating, grouping, and joining tables — to answer business questions directly from a database.*
