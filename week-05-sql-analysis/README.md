# Intermediate SQL Analysis

**Author:** Licia Soyinka
**Project:** Week 5 — The Analyst Accelerator
**Tool used:** SQL (SQL Server dialect), practiced on the W3Schools sample database

---

## What This Is
A set of 8 intermediate SQL queries that go beyond basic pulls into real analysis — finding gaps, comparing to averages, bucketing with logic, and summarizing across joined tables.

## The Questions Answered
1. Customers who have **never** placed an order (LEFT JOIN + IS NULL).
2. Products priced **above the average** (subquery).
3. Each product tagged **High / Medium / Low** by price (CASE).
4. Customers who **have** placed an order (IN subquery).
5. Number of **orders per shipper** (JOIN + GROUP BY).
6. Count of products in each **price tier** (CASE + GROUP BY).
7. Each order with **customer + shipper** (3-table JOIN).
8. Countries with **more than 5 customers** (GROUP BY + HAVING).

## SQL Skills Demonstrated
- **LEFT JOIN** + `IS NULL` (finding rows with no match)
- **Multi-table JOINs** (3 tables) with aliases
- **Subqueries** in WHERE, and **IN** subqueries
- **CASE** for conditional bucketing (price tiers)
- **GROUP BY / HAVING** and aggregates

## Key Findings (sample database)
- A handful of customers have never ordered (useful for a re-engagement campaign).
- Only 2 products are "High" tier (>= $100); most are Medium or Low.
- Orders are split across 3 shippers (roughly 68 / 54 / 74).

## Files
- `week05_sql_analysis.sql` — all 8 commented queries.

---
*Week 5 portfolio project. Demonstrates intermediate SQL — multiple JOIN types, subqueries, and CASE — to answer analysis-level business questions.*
