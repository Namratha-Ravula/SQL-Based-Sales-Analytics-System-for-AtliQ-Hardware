# 📊 SQL-Based Sales Analytics System for AtliQ Hardware

A complete SQL-based analytics project that transforms raw sales data into actionable business insights using views, stored procedures, and functions.

---



## 🔗 Project Links

- 🎥 [Presentation Video](https://youtu.be/3-eaHLKf9BU?si=FAq0KiGydpH1mtu8)
- 💼 [LinkedIn Post](https://www.linkedin.com/posts/namratha-ravula_sql-dataanalytics-mysql-ugcPost-7445094409559289857-YaOp?utm_source=share&utm_medium=member_desktop&rcm=ACoAAD-2POMBXhq2oXj94XjyWKK8nb5c4ZnTz6w)

---

## ⚠️ Note  
This repository includes SQL scripts, exported reports, and presentation materials. The project demonstrates end-to-end data transformation and business analysis using SQL.

---

## 📌 Overview

AtliQ Hardware operates across multiple markets and applies various discounts and deductions to its sales, making it difficult to directly measure actual revenue.

This project builds a structured SQL pipeline to:
- Calculate **accurate Net Sales**
- Analyze **customers, products, and markets**
- Evaluate **forecast accuracy**
- Generate **business insights for decision-making**

---

## 🚀 Key Highlights

- Built a **multi-stage revenue pipeline** (Gross → Pre-Invoice → Post-Invoice → Net Sales)  
- Identified **top customers, markets, and products** driving revenue  
- Analyzed **seasonal trends (Oct–Dec peak demand)**  
- Evaluated **forecast accuracy (~45–48%)**  
- Detected **revenue concentration risk** across key markets and customers  
- Classified markets into **Gold/Silver categories**  

---

## 🧠 Business Insights

- Revenue is highly dependent on **India, Amazon, and top-performing products**  
- Strong **seasonality**, with consistent peaks in **Oct–Dec**  
- **Forecasting is unreliable**, with high error rates (>50%)  
- **LATAM region underperforms** compared to APAC and North America  
- Sales are concentrated in a few **Stock Keeping Units (SKUs)**  

---


---

## 🏗️ SQL Components

### 🔹 Views (Revenue Transformation)
- `gross_sales_view` → Base revenue  
- `pre_invoice_view` → After discounts  
- `post_invoice_view` → After deductions  
- `net_sales_view` → Final revenue  

### 🔹 Stored Procedures
- Top N Customers / Markets / Products  
- Forecast Accuracy Calculation  
- Market Classification  

### 🔹 Functions
- `get_fiscal_year()` → Fiscal year mapping  
- `get_quarter()` → Quarter mapping  

---

## 📊 Analysis Covered

### 🔸 Revenue Analysis
- Gross Sales → Net Sales transformation  
- Top 5 Products by Net Sales  
- Top 10 Customers by Revenue  

### 🔸 Market Analysis
- Top Markets by Net Sales  
- Region-wise Market Performance  
- Market Share Distribution  

### 🔸 Product & Division Analysis
- Division-wise Sales Performance  
- Top Products within Divisions  

### 🔸 Forecast Analysis
- Net Error & Absolute Error  
- Error Percentage  
- Forecast Accuracy  

---

## 🛠️ Tools & Technologies

- MySQL  
- SQL (Joins, Aggregations, CTEs)  
- Data Modeling (Fact & Dimension Tables)  
- Business Data Analysis  

---

## 🎯 Business Problem

AtliQ Hardware lacks visibility into actual revenue due to multiple layers of pricing adjustments and inconsistent forecasting.

This project solves that by:
- Creating a **clear revenue pipeline**
- Delivering **accurate financial insights**
- Enabling **data-driven decision-making**

---

## 💡 Business Recommendations

- Diversify revenue across **markets and customers**  
- Improve **forecasting models** to reduce errors  
- Leverage **seasonal demand (Oct–Dec)** for growth  
- Focus on **top-performing products** and optimize low performers  


---

## 📬 Contact

**Ravula Namratha**  

📧 ravulanamratha98@gmail.com  
🔗 LinkedIn: www.linkedin.com/in/namratha-ravula  
💻 GitHub: https://github.com/Ravula9819  

---

## 📝 Note

This project is created for portfolio purposes to demonstrate SQL-based analytics, business problem-solving, and end-to-end data analysis.


