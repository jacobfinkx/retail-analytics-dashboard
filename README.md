# 📊 Retail Sales Analytics Dashboard

## 🧠 Overview
This project is an end-to-end retail analytics solution designed to analyze sales performance and generate business insights. The project demonstrates the use of SQL for data processing, Excel for initial analysis, and Power BI for building an interactive dashboard.

---

## ⚙️ Tools & Technologies
- **SQL (MySQL)** – Data modeling, joins, and aggregations  
- **Microsoft Excel** – Data validation, cleaning, and basic analysis  
- **Power BI** – Interactive dashboard creation  
- **DAX** – Custom calculations (Total Revenue measure)

---

## 📂 Dataset
The dataset contains simulated retail data, including:
- ~50,000 sales transactions  
- Product-level information  
- Store-level information

---

## 🔧 Key Steps

### ✅ 1. Data Modeling & SQL Analysis
- Created relational tables (sales, products, stores)  
- Performed joins to combine datasets  
- Calculated total revenue using:

### ✅ 2. Excel Analysis
- Cleaned and structured imported data  
- Built formatted tables and initial charts  
- Validated calculations used in SQL queries  

### ✅ 3. Power BI Dashboard
- Built an interactive dashboard with:
  - Total Revenue KPI  
  - Sales by Category  
  - Top 5 Products by Units Sold  
  - Store Performance comparison  
- Created a DAX measure:
  Total Revenue = SUMX(sales, sales[quantity] * RELATED(products[price]))  
- Enabled cross-filtering across visuals for interactivity  

---

## 📈 Dashboard Preview

![Dashboard](Screenshots/Dashboard.png)

---

## 📊 Visual Insights

### Sales by Category
![Sales by Category](Screenshots/SalesbyCategory.png)

---

### Top Products

![Top Products](Screenshots/Top5.png)

---

### Store Performance
![Store Performance](Screenshots/StorePerformance.png)

---

## 🔍 SQL Example

![SQL Query](Screenshots/SQL_query.png)

---

## 💡 Key Insights
- Electronics is the highest-performing category by revenue  
- A small number of products drive a large portion of total sales  
- Store performance is relatively consistent across locations 



