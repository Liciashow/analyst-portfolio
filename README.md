# Excel Data Cleaning & Summary — Messy Sales File

**Author:** Licia Soyinka
**Project:** Week 2 — The Analyst Accelerator
**Tool used:** Microsoft Excel

---

## The Task
A messy sales export needed to be cleaned and summarized so the team could trust the numbers. This project shows the full workflow: clean the data, document every change, then summarize the key results.

## Cleaning Log (every change I made)
1. **Removed duplicate rows** — 2 exact duplicates removed (15 rows → 13 unique orders).
2. **Trimmed extra spaces + fixed capitalization** on customer names using `=PROPER(TRIM(name))` (e.g., `"  aisha bello "` → `"Aisha Bello"`).
3. **Standardized region capitalization** using `=PROPER(region)` (e.g., `EAST`, `north`, `west` → `East`, `North`, `West`).
4. **Split full names** into First Name and Last Name using **Text to Columns**.
5. **Added conditional formatting** to highlight high-value orders (Revenue > $500) in green.

## Key Findings (after cleaning)
- **13 unique orders** (after removing duplicates).
- **Total revenue:** $4,805.
- **Average order value:** ~$369.62.
- **Top regions by revenue:** North ($1,530) and East ($1,290).
- **4 high-value orders** (over $500) — all Laptops or a large Monitor order.

## Why Cleaning Mattered
Before cleaning, the same customer appeared as "JOHN SMITH", "John Smith", and "  john smith " — which would have split one person into three in any grouping. Standardizing the data first is what makes the regional totals (SUMIF) correct and trustworthy.

## Files in this project
- `week02_sales_cleanup.xlsx` — cleaned data, conditional formatting, and the summary block.

---
*Week 2 portfolio project. Demonstrates real-world data cleaning (duplicates, spaces, capitalization, splitting fields), documentation (cleaning log), and summarizing with functions (SUM, AVERAGE, COUNT, SUMIF).*
