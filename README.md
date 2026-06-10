# 📊 Retail Sales Analysis & Customer Insights

![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4479A1?style=for-the-badge&logo=postgresql&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![Status](https://img.shields.io/badge/Status-Complete-brightgreen?style=for-the-badge)

> An end-to-end Business Analyst project analyzing retail sales data to understand customer behavior, identify sales trends, and generate actionable business insights — built with Excel, SQL, and Power BI.

---

## 📌 Table of Contents

- [Problem Statement](#-problem-statement)
- [Key Insights](#-key-insights)
- [Dashboard Preview](#-dashboard-preview)
- [Project Structure](#-project-structure)
- [Dataset Overview](#-dataset-overview)
- [Tools & Technologies](#-tools--technologies)
- [Project Workflow](#-project-workflow)
- [SQL Analysis](#-sql-analysis)
- [Business Impact](#-business-impact)
- [How to Run](#-how-to-run)
- [Author](#-author)

---

## 🔍 Problem Statement

Retail businesses generate large volumes of transactional data daily, but without proper analysis this data provides little value. This project addresses that gap by analyzing retail sales records to answer:

- Which product categories drive the most revenue?
- Who are the most valuable customer segments?
- How do sales vary by time, gender, and age group?
- What patterns can inform smarter marketing and inventory decisions?

---

## 💡 Key Insights

| # | Insight |
|---|---------|
| 1 | 📅 **Weekday sales** are consistently higher than weekend sales |
| 2 | 💻 **Electronics** is the top revenue-generating product category |
| 3 | 💄 **Beauty** category has the lowest overall sales |
| 4 | 👩 **Female customers** contribute slightly more revenue than male customers |
| 5 | 🎯 **Age group 45–54** is the highest-spending customer segment |
| 6 | 📦 A small number of categories account for the majority of total revenue |

---

## 📷 Dashboard Preview

### Sales Performance Dashboard
![Sales Dashboard](assets/Dashboard%201%20.jpeg)

### Customer Insights Dashboard
![Customer Dashboard](assets/Dashboard%202%20.jpeg)

---

## 📁 Project Structure

```
retail-sales-analysis-powerbi-sql/
│
├── 📂 data/
│   └── retail_sales_2_edited.csv             # Cleaned retail sales dataset
│
├── 📂 sql/
│   └── Retail_Customer_Insights.sql          # All SQL queries with comments
│
├── 📂 reports/
│   └── Retail_Sales_Analysis.pbix            # Power BI dashboard file
│
├── 📂 docs/
│   └── STRUCTURE.md                          # Project structure reference
│
├── 📂 assets/
│   ├── Dashboard 1 .jpeg                     # Sales Performance dashboard screenshot
│   └── Dashboard 2 .jpeg                     # Customer Insights dashboard screenshot
│
└── README.md                                 # You are here
```

---

## 📂 Dataset Overview

The dataset (`data/retail_sales_2_edited.csv`) contains retail transaction records with the following fields:

| Column | Description |
|--------|-------------|
| `Transaction ID` | Unique identifier for each sale |
| `Date` | Date of the transaction |
| `Product Category` | Category of the product sold |
| `Gender` | Customer gender |
| `Age Group` | Customer age bracket |
| `Total Amount` | Revenue generated from the transaction |

---

## 🛠 Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Microsoft Excel** | Data cleaning, preprocessing, and derived column creation |
| **SQL (PostgreSQL)** | Business logic queries and aggregation analysis |
| **Power BI Desktop** | Interactive dashboards and data visualization |

---

## 🔄 Project Workflow

### 1️⃣ Data Preparation (Excel)
- Removed duplicates and handled missing values
- Standardized date formats and column types
- Created derived columns: **Age Group** and **Weekday vs Weekend**

### 2️⃣ Data Analysis (SQL)
- Aggregated total sales and order counts
- Segmented customers by gender and age group
- Analyzed sales by product category
- Ran monthly trend queries using date conversion functions

### 3️⃣ Data Visualization (Power BI)
- Built two dedicated dashboards — Sales Performance and Customer Insights
- Created DAX measures for KPIs and calculated fields
- Designed interactive slicers for dynamic filtering by date, category, and segment

---

## 🔍 SQL Analysis

All queries are in [`sql/Retail_Customer_Insights.sql`](sql/Retail_Customer_Insights.sql). Key analyses covered:

- Summary KPIs: total sales, total orders, average transaction value
- Sales breakdown by product category
- Customer segmentation by gender and age group
- Weekday vs weekend sales comparison
- Monthly revenue trend analysis
- Top-spending customer segments

---

## 💼 Business Impact

This analysis helps retail businesses:

- **Target high-value segments** — focus marketing on age group 45–54 and female customers
- **Optimize inventory** — prioritize Electronics; review the Beauty category strategy
- **Plan campaigns** — concentrate promotions on weekdays when sales are highest
- **Track growth** — use monthly trend data to measure performance over time

---

## ▶️ How to Run

### Power BI Dashboard
1. Download `reports/Retail_Sales_Analysis.pbix`
2. Open with **Power BI Desktop** (free at [powerbi.microsoft.com](https://powerbi.microsoft.com))
3. If prompted, update the data source path to `data/retail_sales_2_edited.csv`
4. Click **Refresh** to reload the data

### SQL Queries
1. Import `data/retail_sales_2_edited.csv` into your database as a table named `retail_sales`
2. Open [`sql/Retail_Customer_Insights.sql`](sql/Retail_Customer_Insights.sql) in your SQL editor
3. Run queries individually or as a batch

---

## 👤 Author

**Sirigiri Malakonda Reddy**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=flat&logo=linkedin)](https://www.linkedin.com/in/sirigiri03/)
[![GitHub](https://img.shields.io/badge/GitHub-Profile-181717?style=flat&logo=github)](https://github.com/sirigiri063)

---

## 📄 License

This project uses publicly available retail sales data for educational and portfolio purposes.

---

*Built as a portfolio project to demonstrate end-to-end data analytics and business intelligence skills.*
