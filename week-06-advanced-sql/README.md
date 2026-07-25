# Advanced SQL Analysis — Week 6 Project

**Author:** Licia Soyinka
**Database:** W3Schools sample database (SQL Server dialect — uses `TOP`)
**Skills shown:** window functions (RANK, PARTITION BY, running totals, LAG), CTEs (single and multiple), and query best practices.

This project demonstrates **advanced, senior-level SQL** — the kind used for ranking, trend analysis, and readable multi-step queries in real reporting.

## The questions and techniques

| # | Question | Technique |
|---|----------|-----------|
| Q1 | Rank all products by price | `RANK() OVER (ORDER BY ...)` |
| Q2 | Rank products within each category | `RANK() OVER (PARTITION BY ...)` |
| Q3 | Running total of prices | `SUM() OVER (ORDER BY ...)` |
| Q4 | Top 3 products per category | CTE + `RANK`, then `WHERE r <= 3` |
| Q5 | Price change vs the previous product | `LAG()` |
| Q6 | Count of products in each price tier | Two CTEs (second reads from the first) |
| Q7 | Clean, commented query | Best practices (named columns, early filter, comments) |

## Key takeaways

- **Window functions keep every row** while adding a calculation — unlike GROUP BY, which collapses rows.
- **PARTITION BY** restarts the calculation within each group (ranking or running total per category).
- **LAG** compares each row to the one before it — the basis for month-over-month change.
- **CTEs** (the `WITH` clause) break a complex query into named, readable steps. You *must* use one to filter on a window function's result (Q4).
- **Best practices** — avoid `SELECT *`, filter early, index the columns you filter/join on, and comment your SQL — make queries fast and professional.

## How I'd describe this in an interview

> "I used window functions to rank products overall and within each category, and to build running totals. I used LAG to measure row-to-row change, and CTEs — including a two-CTE query — to keep the logic readable. The last query shows the clean-code habits I follow: named columns, early filtering, and comments."
