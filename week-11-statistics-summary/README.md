# Statistical Summary - Marketing & Sales Data 📊

A statistical analysis of 12 months of marketing and sales data. This project shows core statistical judgment: reading the center, spread, and shape of data, spotting a misleading average, and analyzing a relationship without confusing correlation with causation.

## 📋 The question

"What does this marketing/sales data actually tell us, and what might mislead us?"

## 🗂️ The data

12 monthly rows: MarketingSpend, Sales, and OrderValue (average order size that month).

## 🔢 The findings

  Center - average order value
- Mean = 87.8 · Median = 56.5
- The mean is misleading here: December had an outlier OrderValue of 450, which dragged the average up. Most months are in the $35-80 range, so the median (56.5) tells the honest story. (Right-skewed data.)

  Spread - how consistent is OrderValue?
- Standard deviation = 109.9 · Range = 415
- Both look huge - but that's the same 450 outlier inflating them. Without December, order values are fairly consistent (35–80). Lesson: always check for outliers before trusting spread.

  Relationship - does marketing relate to sales?
- Correlation (MarketingSpend vs Sales) = 0.998, an almost perfect positive correlation. They move together very tightly.
- But correlation is not causation. I would NOT claim marketing caused the sales - a confounder (e.g., busy shopping months like December) could drive both. To prove cause, I'd run an A/B test.

## 💡 Honest insight

Marketing spend and sales are very strongly correlated, so marketing is worth investigating as a growth lever, but it needs a controlled test to confirm it drives sales. And when reporting the "average order value," use the median, not the mean, because one large December order makes the mean misleading.

## ⚠️ What could mislead

- The mean order value (87.8) overstates a typical order because of one outlier.
- The high correlation could tempt someone to claim causation — it doesn't prove it.

## 🧰 Built with

- Excel — AVERAGE, MEDIAN, STDEV.P, MAX/MIN (range), CORREL
- Statistical thinking — center, spread, skew, correlation vs causation

---

  Author: Felicia Soyinka · [LinkedIn](https://www.linkedin.com/in/felicia-soyinka)
