-- ============================================================
--  RETAIL SALES ANALYSIS & CUSTOMER INSIGHTS
--  SQL Queries for Business Intelligence Dashboard
--  Author: Sirigiri Malakonda Reddy
--  Table : retail_sales
-- ============================================================


-- ────────────────────────────────────────────────────────────
--  SECTION 1: SUMMARY KPIs
--  High-level metrics for the KPI cards in Power BI
-- ────────────────────────────────────────────────────────────

-- Total Revenue
SELECT SUM("Total Amount") AS total_revenue
FROM retail_sales;

-- Total Number of Orders
SELECT COUNT("Transaction ID") AS total_orders
FROM retail_sales;

-- Average Transaction Value
SELECT ROUND(AVG("Total Amount"), 2) AS avg_transaction_value
FROM retail_sales;

-- All KPIs in one query
SELECT
    SUM("Total Amount")             AS total_revenue,
    COUNT("Transaction ID")         AS total_orders,
    ROUND(AVG("Total Amount"), 2)   AS avg_transaction_value,
    COUNT(DISTINCT "Gender")        AS customer_segments
FROM retail_sales;


-- ────────────────────────────────────────────────────────────
--  SECTION 2: PRODUCT CATEGORY ANALYSIS
--  Identifies which categories drive the most revenue
-- ────────────────────────────────────────────────────────────

-- Total Revenue by Product Category (ranked)
SELECT
    "Product Category",
    SUM("Total Amount")   AS total_revenue,
    COUNT("Transaction ID") AS total_orders,
    ROUND(AVG("Total Amount"), 2) AS avg_order_value
FROM retail_sales
GROUP BY "Product Category"
ORDER BY total_revenue DESC;

-- Category share of total revenue (%)
SELECT
    "Product Category",
    SUM("Total Amount") AS category_revenue,
    ROUND(
        SUM("Total Amount") * 100.0 / SUM(SUM("Total Amount")) OVER (), 2
    ) AS revenue_share_pct
FROM retail_sales
GROUP BY "Product Category"
ORDER BY category_revenue DESC;


-- ────────────────────────────────────────────────────────────
--  SECTION 3: CUSTOMER SEGMENTATION
--  Breaks down sales by gender and age group
-- ────────────────────────────────────────────────────────────

-- Revenue and Orders by Gender
SELECT
    "Gender",
    SUM("Total Amount")     AS total_revenue,
    COUNT("Transaction ID") AS total_orders,
    ROUND(AVG("Total Amount"), 2) AS avg_order_value
FROM retail_sales
GROUP BY "Gender"
ORDER BY total_revenue DESC;

-- Revenue and Orders by Age Group
SELECT
    "Age Group",
    SUM("Total Amount")     AS total_revenue,
    COUNT("Transaction ID") AS total_orders
FROM retail_sales
GROUP BY "Age Group"
ORDER BY total_revenue DESC;

-- Cross-segment: Gender × Age Group
SELECT
    "Gender",
    "Age Group",
    SUM("Total Amount")     AS total_revenue,
    COUNT("Transaction ID") AS total_orders
FROM retail_sales
GROUP BY "Gender", "Age Group"
ORDER BY total_revenue DESC;


-- ────────────────────────────────────────────────────────────
--  SECTION 4: TIME-BASED ANALYSIS
--  Monthly trends and weekday vs weekend comparison
-- ────────────────────────────────────────────────────────────

-- Monthly Revenue Trend
SELECT
    DATE_TRUNC('month', "Date"::DATE) AS month,
    SUM("Total Amount")               AS monthly_revenue,
    COUNT("Transaction ID")           AS monthly_orders
FROM retail_sales
GROUP BY month
ORDER BY month ASC;

-- Weekday vs Weekend Sales Comparison
SELECT
    CASE
        WHEN EXTRACT(DOW FROM "Date"::DATE) IN (0, 6) THEN 'Weekend'
        ELSE 'Weekday'
    END AS day_type,
    SUM("Total Amount")     AS total_revenue,
    COUNT("Transaction ID") AS total_orders,
    ROUND(AVG("Total Amount"), 2) AS avg_order_value
FROM retail_sales
GROUP BY day_type
ORDER BY total_revenue DESC;

-- Revenue by Day of Week
SELECT
    TO_CHAR("Date"::DATE, 'Day')        AS day_name,
    EXTRACT(DOW FROM "Date"::DATE)      AS day_number,
    SUM("Total Amount")                 AS total_revenue,
    COUNT("Transaction ID")             AS total_orders
FROM retail_sales
GROUP BY day_name, day_number
ORDER BY day_number ASC;


-- ────────────────────────────────────────────────────────────
--  SECTION 5: COMBINED SEGMENT PERFORMANCE
--  Category × Customer segment cross-analysis
-- ────────────────────────────────────────────────────────────

-- Revenue by Category and Gender
SELECT
    "Product Category",
    "Gender",
    SUM("Total Amount") AS total_revenue
FROM retail_sales
GROUP BY "Product Category", "Gender"
ORDER BY "Product Category", total_revenue DESC;

-- Top Category per Age Group
SELECT
    "Age Group",
    "Product Category",
    SUM("Total Amount") AS total_revenue
FROM retail_sales
GROUP BY "Age Group", "Product Category"
ORDER BY "Age Group", total_revenue DESC;

-- High-value transactions (above average spend)
SELECT
    "Transaction ID",
    "Date",
    "Product Category",
    "Gender",
    "Age Group",
    "Total Amount"
FROM retail_sales
WHERE "Total Amount" > (SELECT AVG("Total Amount") FROM retail_sales)
ORDER BY "Total Amount" DESC;
